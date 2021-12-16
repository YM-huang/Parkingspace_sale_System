<%--
  Created by IntelliJ IDEA.
  User: kbdnzzzzz
  Date: 2021/12/12
  Time: 15:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<% String path = request.getContextPath(); %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <style>
        canvas {
            border: 1px solid #e6e6e6;
        }
        .sub {
            display: none;
        }
    </style>
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
</head>
<body>
    <form action="${pageContext.request.contextPath}/user/sign" id="fileup" method="POST" >
        <div class="container">
            <input type="radio" name="tool" id="huabi" checked><label for="huabi">画笔</label>
            <input type="radio" name="tool" id="shuazi"><label for="shuazi">刷子</label>
            <input type="radio" name="tool" id="penqiang"><label for="penqiang">喷枪</label>
            <input type="radio" name="tool" id="xiangpi"><label for="xiangpi">橡皮</label>
            <div class="sub">
                <select>
                    <option>rect</option>
                    <option>circle</option>
                </select>
                <label>大小(px)</label><input value = '10' class="size">
            </div>
        </div>
        <canvas width = "800" height = "600"></canvas>
        <input class="savefile" name="保存" type="button" value="保存">
        <input type="text" id="tmd" name="filett" style="display: none">
<%--        <input class="signfile" name="提交" type="submit" value="提交">--%>
<%--        <button type="button" onclick="uploadFiles();">提交</button>--%>
    </form>

    <script type="text/javascript">var basePath = "${pageContext.request.contextPath}";</script>
    <script>
        let myFiles = [];
        var form=document.getElementById("fileup");
        var uploadFile = new FormData(form);
        (function() {
            var tool = 'huabi';
            var size = 10; // 橡皮大小
            var sub = $('.sub');
            var flag = false;
            var shape = 'rect'; // 橡皮形状

            $('.container').onclick = function(event) {
                var id = event.target.id;
                switch(id) {
                    case 'huabi':
                        tool = 'huabi';
                        flag = false;
                        break;
                    case 'shuazi':
                        tool = 'shuazi';
                        flag = false;
                        break;
                    case 'penqiang':
                        tool = 'penqiang';
                        flag = false;
                        break;
                    case 'xiangpi':
                        tool = 'xiangpi';
                        flag = true;
                        break;
                }
                if (flag) {
                    sub.style.display = 'block';
                } else {
                    sub.style.display = 'none';
                }
            }

            $('select').onchange = function() {
                shape = this.value;
            }

            $('.size').oninput = function() {
                size = this.value;
            }

            var x,y;
            var canvas = $('canvas');
            var ctx = canvas.getContext("2d");

            canvas.onmousedown = function(event) {
                x = event.clientX - this.offsetLeft;
                y = event.clientY - this.offsetTop;

                document.onmousemove = function(event) {
                    var x1 = event.clientX - canvas.offsetLeft;
                    var y1 = event.clientY - canvas.offsetTop;
                    switch(tool) {
                        case 'huabi':
                            huabi(x, y, x1, y1, ctx);
                            break;
                        case 'shuazi':
                            shuazi(x, y, x1, y1, ctx);
                            break;
                        case 'penqiang':
                            penqiang(x, y, ctx);
                            break;
                        case 'xiangpi':
                            xiangpi(x, y, x1, y1, ctx, size, shape);
                            break;
                    }
                    x = x1;
                    y = y1;
                }
            }

            $('.savefile').onclick= function(event) {
                var myFile;
                myFile = canvas.toDataURL("image/png");
                var timestamp = new Date();
                var fileOfBlob = dataURLtoFile(myFile, timestamp+'.jpg');
                uploadFile.append('file', fileOfBlob);
                document.getElementById("tmd").value = myFile;
                document.getElementById('fileup').submit();
            }

            document.onmouseup = function() {
                this.onmousemove = null;
            }

        })();

        function $(selector) {
            return document.querySelector(selector);
        }


        function uploadFiles(){
            //使用ajax提交form表单
            $.ajax({
                url: '${pageContext.request.contextPath}/user/sign',
                type: 'POST',
                data: uploadFile,
                async: false,
                cache: true,
                contentType: false, //不设置内容类型
                processData: false, //不处理数据
                error: function () {
                    alert("上传失败！");
                }
            });
            // alert("7869986失败！");
        }
        function saveimg(myFiles,canvas){
            var myFile;
            myFile = canvas.toDataURL("image/png");
            var timestamp =makeid();
            // alert(myFile);
            myFiles.push(dataURLtoFile(myFile, timestamp+'.jpg'));
        }

        function signupload(myFile){
            //使用ajax提交form表单
            var form=document.getElementById("file");
            var uploadFile = new FormData(form);
            var fileOfBlob = myFile.pop();
            uploadFile.append('file', fileOfBlob);
            $.ajax({
                url: basePath+"/user/sign",
                type: 'POST',
                data: uploadFile,
                async: false,
                cache: true,
                contentType: false, //不设置内容类型
                processData: false, //不处理数据
                error: function () {
                    alert("上传失败！");
                }
            });
            alert(myFile);

        }

        function huabi(startX, startY, endX, endY, ctx) {
            ctx.beginPath();
            ctx.globalAlpha = 1;
            ctx.lineWidth = 2;
            ctx.strokeStyle = "#000";
            ctx.moveTo(startX, startY);
            ctx.lineTo(endX, endY);
            ctx.closePath();
            ctx.stroke();
        }

        function shuazi(startX, startY, endX, endY, ctx) {
            ctx.beginPath();
            ctx.globalAlpha = 1;
            ctx.lineWidth = 10;
            ctx.strokeStyle = "#000";
            ctx.moveTo(startX, startY);
            ctx.lineTo(endX, endY);
            ctx.closePath();
            ctx.stroke();
        }

        function penqiang(startX, startY, ctx) {
            for(var i = 0; i < 10; i++){
                var randomNum = Math.random()*15;
                ctx.fillStyle = '#000';
                ctx.beginPath();
                ctx.globalAlpha = 0.5;
                ctx.arc(startX + randomNum, startY + randomNum, 1, 0, 2 * Math.PI);
                ctx.fill();
            }
        }

        function xiangpi(startX, startY, endX, endY, ctx, size, shape) {
            ctx.beginPath();
            ctx.globalAlpha = 1;
            switch(shape) {
                case 'rect':
                    ctx.lineWidth = size;
                    ctx.strokeStyle = "#fff";
                    ctx.moveTo(startX, startY);
                    ctx.lineTo(endX, endY);
                    ctx.closePath();
                    ctx.stroke();
                    break;
                case 'circle':
                    ctx.fillStyle = "#fff";
                    ctx.arc(startX, startY, size, 0, 2 * Math.PI);
                    ctx.fill();
                    break;
            }
        }

        //将base64转换为文件
        function dataURLtoFile(dataurl, filename) {
            var arr = dataurl.split(','), mime = arr[0].match(/:(.*?);/)[1],
                bstr = atob(arr[1]), n = bstr.length, u8arr = new Uint8Array(n);
            while(n--){
                u8arr[n] = bstr.charCodeAt(n);
            }
            return new File([u8arr], filename, {type:mime});
        }

    </script>
</body>
</html>
