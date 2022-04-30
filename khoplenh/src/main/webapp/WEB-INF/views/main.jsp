<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<html>
<head>
    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
          integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <!-- jQuery library -->

    <title>Chứng khoán</title>
</head>
<style type="text/css">
    html, body {
        height: 100%;

    }

    .container {
        height: 100%;
        display: flex;
        justify-content: center;
        align-items: center;
    }
</style>
<body>
<c:if test="${message==null}">
    <div class="alert alert-success" role="alert" style="visibility: hidden">
        space
    </div>
</c:if>
<c:if test="${message!=null}">
    <div class="alert alert-success" role="alert">
            ${message}
    </div>
</c:if>
<div class="container">
    <form:form class="ui large form" action="welcome" method="post"
               modelAttribute="lenh">
        <div class="form-group row">
            <label for="inputEmail3" class="col-sm-2 col-form-label">Loại
                lệnh</label>
            <div class="col-sm-4">
                <select class="form-control">
                    <option selected value="1">Thông thường</option>
                </select>
            </div>
            <label for="inputEmail3" class="col-sm-2 col-form-label">Mua/bán</label>
            <div class="col-sm-4">
                <form:select id="loaigd" path="loaigd" class="form-control" onchange="gdChanged(this)">
                    <form:option value="M" selected="selected">Mua</form:option>
                    <form:option value="B">Bán</form:option>
                </form:select>

            </div>
        </div>
        <div class="form-group row">
            <label for="inputEmail3" class="col-sm-2 col-form-label">Mã
                CK</label>
            <div class="col-sm-4">
                <form:input class="form-control" path="macp" type="text"
                            name="email" placeholder="Mã chứng khoán" required="required"/>
            </div>
            <label for="inputEmail3" class="col-sm-2 col-form-label">Lệnh</label>
            <div class="col-sm-4">
                <form:select path="loailenh" class="form-control">
                    <form:option value="LO" selected="selected">LO</form:option>
                </form:select>

            </div>
        </div>
        <div class="form-group row">
            <label for="inputEmail3" class="col-sm-2 col-form-label">Khối
                lượng</label>
            <div class="col-sm-4">
                <form:input class="form-control" path="soluong" type="number"
                            placeholder="Khối lượng" required="required" min="1"/>
            </div>
            <label for="inputEmail3" class="col-sm-2 col-form-label">Giá</label>
            <div class="col-sm-4">
                <form:input class="form-control" path="giadat" type="number"
                            placeholder="Giá" required="required" min="0" step="0.01"/>

            </div>
        </div>
        <div class="row justify-content-md-center">
            <button class="col-sm-2 btn btn-primary" id="btn" style="right:7px">Mua</button>
            <a class="col-sm-2 btn btn-secondary" href="welcome" role="button" style="left:7px">Làm lại</a>
        </div>
    </form:form>

</div>
<script type="text/javascript">

    function gdChanged(obj) {
        var message = document.getElementById('btn');
        var value = obj.value;
        if (value === 'M') {
            message.innerHTML = "Mua";
        } else if (value === 'B') {
            message.innerHTML = "Bán";
        }
    }
</script>
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
        integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
        crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
        integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
        crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
        integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
        crossorigin="anonymous"></script>
</body>
</html>