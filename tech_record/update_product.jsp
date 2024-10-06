<%@ page import="models.Product" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Updating Record Page...</title>
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
    <% Product p = (Product) request.getAttribute("product"); %>
    <div class="container-fluid">
        <div class="row justify-content-center">
            <div class="col-3 border p-3 mt-3 bg-light mb-4 rounded-5">
                <div class="fs-2 text-primary font-bold" style="text-decoration: underline dotted red 5px;">
                    Update Record Form
                </div>
                <form action="update.do" class="" method="post">
                    <div class="form-check">
                        <label class="form-label fw-bold pt-2" style="font-family: verdana;" for="pn">Product
                            Name</label>
                        <% String pName = p.getProductName(); %>
                        <select name="product_name" id="pn" class="form-select">

                            <% if(pName.equals("smart watch")) {%>
                            <option value="smart watch">Smart Watch</option>
                            <% }else {%>
                            <option value="smart watch" selected>Smart Watch</option>

                            <%} if(pName.equals("IPhone")) { %>
                            <option value="IPhone" selected>IPhone</option>
                            <% } else { %>
                            <option value="IPhone">IPhone</option>

                            <%} if(pName.equals("laptop")) { %>
                            <option value="laptop" selected>Laptop</option>
                            <% } else { %>
                            <option value="laptop">Laptop</option>

                            <% } if(pName.equals("Phone")) { %>
                            <option value="Phone" selected>Phone</option>
                            <% } else { %>
                            <option value="Phone">Phone</option>

                            <% } if(pName.equals("tablet")) { %>
                            <option value="tablet" selected>Tablet</option>
                            <%} else {%>
                            <option value="tablet">Tablet</option>
                            <% } %>
                        </select>

                    </div>
                    <div class="form-check">
                        <label class="form-label fw-bold pt-2" style="font-family: verdana;" for="cn">Company
                            Name:</label>
                        <% String cName = p.getCompanyName(); %>

                        <% if(cName.equals("dell")){ %>
                        <div>
                            <input type="radio" class="" name="company_name" id="cn" value="dell" checked>Dell
                        </div>
                        <div>
                            <input type="radio" class="" name="cn" id="cn" value="acer">Acer
                        </div>
                        <div>
                            <input type="radio" class="" name="cn" id="cn" value="lenovo">Lenovo
                        </div>
                        <% } else { %>
                        <div>
                            <input type="radio" class="" name="company_name" id="cn" value="dell">Dell
                        </div>

                        <% if(cName.equals("acer")){ %>
                        <div>
                            <input type="radio" class="" name="cn" id="cn" value="acer" checked>Acer
                        </div>
                        <div>
                            <input type="radio" class="" name="cn" id="cn" value="lenovo">Lenovo
                        </div>
                        <% } else { %>
                        <div>
                            <input type="radio" class="" name="cn" id="cn" value="acer">Acer
                        </div>
                        <div>
                            <input type="radio" class="" name="cn" id="cn" value="lenovo" checked>Lenovo
                        </div>
                        <% } %>
                        <% } %>
                    </div>
                    <div class="form-check">
                        <label class="form-label fw-bold pt-2" style="font-family: verdana;" for="p">Price</label>
                        <input type="number" class="form-control" name="price" id="p" value="<%= p.getPrice() %>">
                    </div>
                    <div class="form-check">
                        <label class="form-label fw-bold pt-2" style="font-family: verdana;" for="q">Quantity</label>
                        <input type="number" class="form-control" name="quantity" id="q" value="<%= p.getQuantity() %>">
                    </div>
                    <div class=" form-check pt-2">
                        <label class="form-label fw-bold" style="font-family: verdana;" for="d">Discount</label>
                        <input type="number" class="form-control" name="discount" id="d" value="<%= p.getDiscount() %>">
                    </div>
                    <div class=" form-check">
                        <label class="form-label pt-2 fw-bold" style="font-family: verdana;" for="pd">Production
                            Date</label>
                        <input type="date" class="form-control" name="pd" id="pd" value="<%= p.getProductionDate() %>">
                    </div>
                    <div>
                        <input type="hidden" name="product_id" value="<%= p.getProductID() %>">
                    </div>
                    <div class="row pt-4 justify-content-center">
                        <div class="col-3">
                            <input type="submit" value="Update" class="btn btn-primary px-3">
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</body>

</html>