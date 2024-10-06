<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add Record Page...</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css">
    <style>
        body {
            background-image: url(back2.jpg);
            background-repeat: no-repeat;
            background-size: cover;
        }
    </style>
</head>

<body>
    <% String msg = (String)session.getAttribute("msg"); %>
    <div class="container-fluid">
        <% if(msg != null) {%>
        <div class="row justify-content-center">
            <div class="col-3 fs-4">
                <div class="alert alert-success">
                    Product saved successfully
                </div>
            </div>
        </div>
        <% session.removeAttribute("msg");
    } %>
        <div class="row justify-content-center">
        </div>
        <div class="row justify-content-center">
            <div class="col-3 border p-3 mt-3 bg-light rounded-5">
                <div class="fs-2 text-primary font-bold" style="text-decoration: underline dotted red 5px;">
                    Add Record Form
                </div>
                <form action="add.do" class="" method="post">
                    <div class="form-check">
                        <label class="form-label fw-bold pt-2" style="font-family: verdana;" for="pn">Product
                            Name</label>
                        <select name="product_name" id="pn" class="form-select">
                            <option value="" selected>-----select product here-----</option>
                            <option value="smart watch">Smart Watch</option>
                            <option value="IPhone">IPhone</option>
                            <option value="Laptop">Laptop</option>
                            <option value="Phone">Phone</option>
                            <option value="Tablet">Tablet</option>
                        </select>

                    </div>
                    <div class="form-check">
                        <label class="form-label fw-bold pt-2" style="font-family: verdana;" for="cn">Company
                            Name:</label>
                        <div>
                            <input type="radio" class="" name="company_name" id="cn" value="Dell">Dell
                        </div>
                        <div>
                            <input type="radio" class="" name="company_name" id="cn" value="Acer">Acer
                        </div>
                        <div>
                            <input type="radio" class="" name="company_name" id="cn" value="Lenovo">Lenovo
                        </div>
                    </div>
                    <div class="form-check">
                        <label class="form-label fw-bold pt-2" style="font-family: verdana;" for="p">Price</label>
                        <input type="number" class="form-control" name="price" id="p" placeholder="Enter price">
                    </div>
                    <div class="form-check">
                        <label class="form-label fw-bold pt-2" style="font-family: verdana;" for="q">Quantity</label>
                        <input type="number" class="form-control" name="quantity" id="q" placeholder="Enter quantity">
                    </div>
                    <div class="form-check pt-2">
                        <label class="form-label fw-bold" style="font-family: verdana;" for="d">Discount</label>
                        <input type="number" class="form-control" name="discount" id="d" placeholder="Enter discount">
                    </div>
                    <div class="form-check">
                        <label class="form-label pt-2 fw-bold" style="font-family: verdana;" for="pd">Production
                            Date</label>
                        <input type="date" class="form-control" name="pd" id="pd">
                    </div>
                    <div class="row pt-4 justify-content-center">
                        <div class="col-3">
                            <input type="submit" value="Save" class="btn btn-primary px-3">
                        </div>
                    </div>
                </form>
            </div>
        </div>
        <div class="row justify-content-center">
            <div class="col-2">
                <a href="show.do">
                    <div class="fs-2 ">
                        Show Records
                    </div>
                </a>
            </div>
        </div>
    </div>
</body>

</html>