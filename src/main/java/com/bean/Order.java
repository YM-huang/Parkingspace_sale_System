package com.bean;

public class Order {
    String order_id;
    String parking_space_id;
    String contract_signatory;
    String contract_initiator;
    String contract_content;
    String order_time;
    String payment_method;
    String final_price;
    String deposit;
    String purchase_method;
    String state;
    String final_payment_time;

    public String getOrder_id() {
        return order_id;
    }

    public void setOrder_id(String order_id) {
        this.order_id = order_id;
    }

    public String getParking_space_id() {
        return parking_space_id;
    }

    public void setParking_space_id(String parking_space_id) {
        this.parking_space_id = parking_space_id;
    }

    public String getContract_signatory() {
        return contract_signatory;
    }

    public void setContract_signatory(String contract_signatory) {
        this.contract_signatory = contract_signatory;
    }

    public String getContract_initiator() {
        return contract_initiator;
    }

    public void setContract_initiator(String contract_initiator) {
        this.contract_initiator = contract_initiator;
    }

    public String getContract_content() {
        return contract_content;
    }

    public void setContract_content(String contract_content) {
        this.contract_content = contract_content;
    }

    public String getOrder_time() {
        return order_time;
    }

    public void setOrder_time(String order_time) {
        this.order_time = order_time;
    }

    public String getPayment_method() {
        return payment_method;
    }

    public void setPayment_method(String payment_method) {
        this.payment_method = payment_method;
    }

    public String getFinal_price() {
        return final_price;
    }

    public void setFinal_price(String final_price) {
        this.final_price = final_price;
    }

    public String getDeposit() {
        return deposit;
    }

    public void setDeposit(String deposit) {
        this.deposit = deposit;
    }

    public String getPurchase_method() {
        return purchase_method;
    }

    public void setPurchase_method(String purchase_method) {
        this.purchase_method = purchase_method;
    }

    public String getState() {
        return state;
    }

    public void setState(String state) {
        this.state = state;
    }

    public String getFinal_payment_time() {
        return final_payment_time;
    }

    public void setFinal_payment_time(String final_payment_time) {
        this.final_payment_time = final_payment_time;
    }
    Order(){}
}
