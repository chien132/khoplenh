<%@ page pageEncoding="UTF-8" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<html>
<head>
    <meta charset="utf-8"/>
    <base href="${pageContext.servletContext.contextPath}/">
    <link rel="stylesheet" type="text/css" href="resources/semantic/semantic.min.css"/>
    <title>Đặt lệnh</title>
</head>
<style>
    html, body {
        height: 90%;
        /*font-family: "Segoe UI";*/
        font-size: medium;
    }

    .spacer {
        height: 25%;
    }
</style>
<body>

<%--<c:if test="${message!=null}">--%>
<%--    <div class="alert alert-success" role="alert">--%>
<%--            ${message}--%>
<%--    </div>--%>
<%--</c:if>--%>


<div class="spacer"></div>
<div class="ui modal" id="messagemodal">
    <div class="header"><i class="info blue icon"></i> Thông báo</div>
    <div class="content">
        <h3>${message}</h3>
    </div>
    <div class="actions">
        <div class="ui cancel blue inverted button">OK</div>
    </div>
</div>

<div class="ui grid" style="width: 100%; margin-top: 5px">

    <div class="six wide centered column">

        <form:form class="ui large form" action="datlenh" method="post"
                   modelAttribute="lenh">
            <div class="ui stacked segment" style="font-size: inherit">
                <h2 class="ui big"><i class="signup icon"></i>Đặt lệnh</h2>
                <div class="fields">
                    <div class="eight wide field">
                        <label>Mã CK</label>
                        <div class="ui left input">
                            <form:input path="macp" id="mackinput"
                                        type="text" placeholder="Mã chứng khoán" required="true"/>
                        </div>
                    </div>
                    <div class="eight wide field"><label>Loại lệnh</label>
                        <select class="ui dropdown">
                            <option selected value="1">Thông thường</option>
                        </select>
                    </div>
                </div>

                <div class="fields">
                    <div class="eight wide field">
                        <label>Khối lượng</label>
                        <div class="ui left input">
                            <form:input class="form-control" path="soluong" type="number"
                                        placeholder="Khối lượng" required="required" min="1"/>
                        </div>
                    </div>
                    <div class="eight wide field"><label>Lệnh</label>
                        <form:select path="loailenh" class="ui dropdown">
                            <form:option value="LO" selected="selected">LO</form:option>
                        </form:select>
                    </div>
                </div>

                <div class="fields">
                    <div class="eight wide field">
                        <label>Giá</label>
                        <div class="ui left input">
                            <form:input class="form-control" path="giadat" type="number"
                                        placeholder="Giá" required="required" min="0" step="0.01"/>
                        </div>
                    </div>
                    <div class="eight wide field"><label>Mua/Bán</label>
                        <form:select id="loaigd" path="loaigd" class="ui dropdown" onchange="gdChanged(this)">
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
                    <button type="reset" class="ui fluid large grey button two wide field">Làm lại</button>
                </div>
            </div>
        </form:form>
    </div>
</div>


<script type="text/javascript" src="resources/semantic/jquery-3.6.0.min.js"></script>
<script type="text/javascript" src="resources/semantic/semantic.min.js"></script>

<script>
    $(document).ready(function () {
        // - MESSAGES
        if (${message!=null}) {
            $('#messagemodal').modal('show');
        }
        $('.ui.dropdown').dropdown()
        ;
    });

    function gdChanged(obj) {
        var label = document.getElementById('btn');
        var value = obj.value;
        if (value === 'M') {
            label.innerHTML = "Mua";
        } else if (value === 'B') {
            label.innerHTML = "Bán";
        }
    }

    $('#mackinput').keyup(function () {
        this.value = this.value.toLocaleUpperCase();
    });
</script>
</body>
</html>