<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@include file="/common/taglib.jsp" %>
<c:url var="buildingURL" value="/admin-building?action=EDIT" />
<!DOCTYPE html>
<html>

<head>
    <meta charset="ISO-8859-1">
    <title>Edit Building</title>
</head>

<body>
    <div class="main-content">
        <div class="main-content-inner">
            <div class="breadcrumbs ace-save-state" id="breadcrumbs">
                <ul class="breadcrumb">
                    <li>
                        <i class="ace-icon fa fa-home home-icon"></i>
                        <a href="#">Home</a>
                    </li>
                    <li class="active">Dashboard</li>
                </ul><!-- /.breadcrumb -->
            </div>

            <div class="page-content">
                <div class="row">
                    <div class="col-xs-12">
                        <h2 class="header blue text-center">Chỉnh sửa tòa nhà </h2>
                        <form class="form-horizontal" id="formEdit" role="form" method="POST" action="${buildingURL}">
                        	<input type="hidden" value = "${building.id}" name = "id">
                            <div class="form-group">
                                <label class="col-sm-3 control-label no-padding-right" for="name"> Tên tòa
                                    nhà
                                </label>
                                <div class="col-sm-9">
                                    <input value="${building.name}" type="text" id="name" name="name"
                                        class="col-xs-10 col-sm-5" />
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-3 control-label no-padding-right" for="district"> Quận
                                </label>
                                <div class="col-sm-9">
                                    <select name="district" id="district" class="chosen-select">
                                        <option value="" selected disabled>Chọn quận</option>
                                        <option value="QUAN_1">1</option>
                                        <option value="QUAN_2">2</option>
                                        <option value="QUAN_3">3</option>
                                        <option value="QUAN_4">4</option>
                                    </select>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-3 control-label no-padding-right" for="ward"> Phường
                                </label>
                                <div class="col-sm-9">
                                    <input value="${building.ward}" type="text" id="ward" name="ward"
                                        class="col-xs-10 col-sm-5">
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-3 control-label no-padding-right" for="street"> Đường
                                </label>
                                <div class="col-sm-9">
                                    <input value="${building.street}" type="text" id="street" name="street"
                                        class="col-xs-10 col-sm-5">
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-3 control-label no-padding-right" for="numberOfBasement"> Số
                                    tầng hầm
                                </label>
                                <div class="col-sm-9">
                                    <input value="${building.numberOfBasement}" type="number" id="numberOfBasement"
                                        name="numberOfBasement" class="col-xs-10 col-sm-5">
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-3 control-label no-padding-right"> Loại tòa
                                    nhà
                                </label>
                                <div class="col-sm-9">
                                    <label class="checkbox-inline">
                                        <input type="checkbox" id="buildingTypes" name="buildingTypes"
                                            value="TANG_TRET">
                                        Tầng trệt
                                    </label>
                                    <label class="checkbox-inline">
                                        <input type="checkbox" id="buildingTypes" name="buildingTypes"
                                            value="NGUYEN_CAN">
                                        Nguyên căn
                                    </label>
                                    <label class="checkbox-inline">
                                        <input type="checkbox" id="buildingTypes" name="buildingTypes" value="NOI_THAT">
                                        Nội thất
                                    </label>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-3 control-label no-padding-right" for="areaRent">
                                    Diện tích thuê
                                </label>
                                <div class="col-sm-9">
                                    <input value="${building.buildingArea}" type="number" id="areaRent"
                                        name="buildingArea" class="col-xs-10 col-sm-5">
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-3 control-label no-padding-right" for="costRent">
                                    Giá thuê
                                </label>
                                <div class="col-sm-9">
                                    <input value="${building.costRent}" type="number" id="costRent" name="costRent"
                                        class="col-xs-10 col-sm-5">
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-3 control-label no-padding-right" for="costDescription">
                                    Mô tả giá
                                </label>
                                <div class="col-sm-9">
                                    <textarea rows="4" id="costDescription" name="costDescription"
                                        class="col-xs-10 col-sm-5">${building.costDescription}</textarea>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-3 control-label no-padding-right" for="serviceCost">
                                    Phí dịch vụ
                                </label>
                                <div class="col-sm-9">
                                    <input value="${building.serviceCost}" type="text" id="serviceCost"
                                        name="serviceCost" class="col-xs-10 col-sm-5">
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-3 control-label no-padding-right" for="carCost">
                                    Phí ô tô
                                </label>
                                <div class="col-sm-9">
                                    <input value="${building.carCost}" type="text" id="carCost" name="carCost"
                                        class="col-xs-10 col-sm-5">
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-3 control-label no-padding-right" for="motorbikeCost">
                                    Phí mô tô
                                </label>
                                <div class="col-sm-9">
                                    <input value="${building.motorbikeCost}" type="text" id="motorbikeCost"
                                        name="motorbikeCost" class="col-xs-10 col-sm-5">
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-3 control-label no-padding-right" for="overtimeCost">
                                    Phí ngoài giờ
                                </label>
                                <div class="col-sm-9">
                                    <input value="${building.overtimeCost}" type="text" id="overtimeCost"
                                        name="overtimeCost" class="col-xs-10 col-sm-5">
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-3 control-label no-padding-right" for="electricityCost">
                                    Tiền điện
                                </label>
                                <div class="col-sm-9">
                                    <input value="${building.electricityCost}" type="text" id="electricityCost"
                                        name="electricityCost" class="col-xs-10 col-sm-5">
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-3 control-label no-padding-right" for="deposit">
                                    Đặt cọc
                                </label>
                                <div class="col-sm-9">
                                    <input value="${building.deposit}" type="text" id="deposit" name="deposit"
                                        class="col-xs-10 col-sm-5">
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-3 control-label no-padding-right" for="payment">
                                    Thanh toán
                                </label>
                                <div class="col-sm-9">
                                    <input value="${building.payment}" type="text" id="payment" name="payment"
                                        class="col-xs-10 col-sm-5">
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-3 control-label no-padding-right" for="timeRent">
                                    Thời hạn thuê
                                </label>
                                <div class="col-sm-9">
                                    <input value="${building.timeRent}" type="text" id="timeRent" name="timeRent"
                                        class="col-xs-10 col-sm-5">
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-3 control-label no-padding-right" for="timeDecorator">
                                    Thời gian trang trí
                                </label>
                                <div class="col-sm-9">
                                    <input value="${building.timeDecorator}" type="text" id="timeDecorator"
                                        name="timeDecorator" class="col-xs-10 col-sm-5">
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-3 control-label no-padding-right">

                                </label>
                                <div class="col-sm-9">
                                    <button type="submit" class="btn btn-primary">Cập nhật tòa
                                        nhà</button>
                                    <button type="button" class="btn btn-danger">Hủy</button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>

</html>