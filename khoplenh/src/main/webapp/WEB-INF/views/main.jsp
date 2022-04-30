<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<html>
<head>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
          integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <meta charset="utf-8"/>
    <base href="${pageContext.servletContext.contextPath}/">
    <link rel="stylesheet" type="text/css" href="resources/semantic/semantic.min.css"/>
    <title>Đặt lệnh</title>
</head>
<style>
    html, body {
        height: 90%;
    }

    .spacer {
        height: 25%;
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
<div class="spacer"></div>
<div class="ui container" style="background-color: rgba(255,255,255,0.2);">

    <div class="ui grid" style="width: 100%; margin-top: 5px">

        <div class="ten wide centered column">

            <form:form class="ui large form" action="datlenh" method="post"
                       modelAttribute="lenh">
                <div class="ui segment" style="font-size: inherit">

                    <div class="fields">
                        <div class="eight wide field">
                            <label>Mã CK<b
                                    style="color: red;">*</b></label>
                            <div class="ui left input">
                                <form:input path="macp" id="mackinput"
                                            type="text" placeholder="Mã chứng khoán" required="true"/>
                            </div>
                        </div>
                        <div class="eight wide field"><label>Loại lệnh</label>
                            <select>
                                <option selected value="1">Thông thường</option>
                            </select>
                        </div>
                    </div>

                    <div class="fields">
                        <div class="eight wide field">
                            <label>Khối lượng<b
                                    style="color: red;">*</b></label>
                            <div class="ui left input">
                                <form:input class="form-control" path="soluong" type="number"
                                            placeholder="Khối lượng" required="required" min="1"/>
                            </div>
                        </div>
                        <div class="eight wide field"><label>Lệnh</label>
                            <form:select path="loailenh" class="form-control">
                                <form:option value="LO" selected="selected">LO</form:option>
                            </form:select>
                        </div>
                    </div>

                    <div class="fields">
                        <div class="eight wide field">
                            <label>Giá<b
                                    style="color: red;">*</b></label>
                            <div class="ui left input">
                                <form:input class="form-control" path="giadat" type="number"
                                            placeholder="Giá" required="required" min="0" step="0.01"/>
                            </div>
                        </div>
                        <div class="eight wide field"><label>Mua/Bán</label>
                            <form:select id="loaigd" path="loaigd" class="form-control" onchange="gdChanged(this)">
                                <form:option value="M" selected="selected">Mua</form:option>
                                <form:option value="B">Bán</form:option>
                            </form:select>
                        </div>
                    </div>
                    <div class="fields">
                        <div class="five wide field"></div>
                        <button type="submit" class="ui fluid large teal submit button two wide field" id="btn">Mua
                        </button>
                        <div class="two wide field"></div>
                        <button type="reset" class="ui fluid large grey button two wide field">Làm <lại></lại></button>
                    </div>
                </div>
            </form:form>
        </div>
    </div>
</div>

<div class="ui tiny modal" id="messagemodal">
    <div class="header"><i class="info blue icon"></i> Thông báo</div>
    <div class="content">
        <h3>${message}</h3>
    </div>
    <div class="actions">
        <div class="ui cancel blue inverted button">OK</div>
    </div>
</div>

<script type="text/javascript" src="resources/semantic/jquery-3.6.0.min.js"></script>
<script type="text/javascript" src="resources/semantic/semantic.min.js"></script>

<script>
    $(document).ready(function () {
        // - MESSAGES
        if (${message!=null}&&
        ${dontshowmessage==null})
        {
            $('#messagemodal').modal('show');
        }
    });

    function gdChanged(obj) {
        var message = document.getElementById('btn');
        var value = obj.value;
        if (value === 'M') {
            message.innerHTML = "Mua";
        } else if (value === 'B') {
            message.innerHTML = "Bán";
        }
    }
    $('#mackinput').keyup(function () {
        this.value = this.value.toLocaleUpperCase();
    });
</script>
</body>
</html>