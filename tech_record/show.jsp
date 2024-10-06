<%@ page import="java.util.ArrayList,models.Product" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Showing Product Records...</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css">
    <link rel="stylesheet"
        href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@24,400,0,0" />
    <link rel="stylesheet"
        href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@24,400,0,0" />
</head>

<body>

    <% ArrayList<Product> products = (ArrayList) request.getAttribute("records"); %>

    <div class="container">
        <div class="row justify-content-center">
            <div class="col-6 ps-5">
                <div class="fs-1 text-success font-bold pt-5 ps-5 pb-3"
                    style="text-decoration: underline double red 2px;">
                    Products Record Table
                </div>
            </div>
        </div>
        <div class="row justify-content-center">
            <div class="col-6">
                <table class="table table-hover">
                    <thead>
                        <tr>
                            <th>Sr No.</th>
                            <th>Product Name</th>
                            <th>Company Name</th>
                            <th>Price</th>
                            <th>Quantity</th>
                            <th>Discount</th>
                            <th>Production Date</th>
                            <th>Edit record</th>
                            <th>Delete record</th>
                        </tr>
                    </thead>
                    <tbody>
                        <% int i = 1;
                        for(Product p : products) { %>
                        <tr>
                            <% Integer productID = p.getProductID(); %>
                            <td><%-- i++ --%>
                                <%= productID %></td>
                            <td><%= p.getProductName() %></td>
                            <td><%= p.getCompanyName() %></td>
                            <td><%= p.getPrice() %></td>
                            <td><%= p.getQuantity() %></td>
                            <td><%= p.getDiscount() %></td>
                            <td><%= p.getProductionDate() %></td>
                            <td>
                                <!-- Button trigger modal -->
                                <button type="button" class="btn text-primary" data-bs-toggle="modal"
                                    data-bs-target="#exampleModal1">
                                    <span class="material-symbols-outlined">
                                            edit_square
                                    </span>
                                </button>

                                <div class="modal fade" id="exampleModal1" tabindex="-1"
                                    aria-labelledby="exampleModalLabel" aria-hidden="true" data-bs-backdrop="static">
                                    <div class="modal-dialog">
                                        <div class="modal-content">
                                            <div class="modal-header">
                                                <h1 class="modal-title fs-4 text-danger justify-content-center"
                                                    id="exampleModalLabel">Update
                                                    Record</h1>
                                                <button type="button" class="btn-close" data-bs-dismiss="modal"
                                                    aria-label="Close"></button>
                                            </div>
                                            <div class="modal-body">
                                                <form action="update.do" class="" method="post" id="form">
                                                    <div class="form-check">
                                                        <label class="form-label fw-bold pt-2"
                                                            style="font-family: verdana;" for="pn">Product
                                                            Name</label>
                                                        <% String pName = p.getProductName(); %>
                                                        <select name="product_name" id="pn" class="form-select">

                                                            <% if(pName.equals("Smart Watch")) {%>
                                                                <option value="Smart Watch" selected>Smart Watch</option>
                                                                <% }else {%>
                                                                    <option value="Smart Watch">Smart Watch</option>
                                                            <%} if(pName.equals("IPhone")) { %>
                                                            <option value="IPhone" selected>IPhone</option>
                                                            <% } else { %>
                                                            <option value="IPhone">IPhone</option>

                                                            <%} if(pName.equals("laptop")) { %>
                                                            <option value="Laptop" selected>Laptop</option>
                                                            <% } else { %>
                                                            <option value="Laptop">Laptop</option>

                                                            <% } if(pName.equals("Phone")) { %>
                                                            <option value="Phone" selected>Phone</option>
                                                            <% } else { %>
                                                            <option value="Phone">Phone</option>

                                                            <% } if(pName.equals("Tablet")) { %>
                                                            <option value="Tablet" selected>Tablet</option>
                                                            <%} else {%>
                                                            <option value="Tablet">Tablet</option>
                                                            <% } %>
                                                        </select>

                                                    </div>
                                                    <div class="form-check">
                                                        <label class="form-label fw-bold pt-2"
                                                            style="font-family: verdana;" for="cn">Company
                                                            Name:</label>
                                                        <% String cName = p.getCompanyName(); %>

                                                        <% if(cName.equals("Dell")){ %>
                                                        <div>
                                                            <input type="radio" class="" name="company_name" id="cn"
                                                                value="Dell" checked>Dell
                                                        </div>
                                                        <div>
                                                            <input type="radio" class="" name="company_name" id="cn"
                                                                value="Acer">Acer
                                                        </div>
                                                        <div>
                                                            <input type="radio" class="" name="company_name" id="cn"
                                                                value="Lenovo">Lenovo
                                                        </div>
                                                        <% } else { %>
                                                        <div>
                                                            <input type="radio" class="" name="company_name" id="cn"
                                                                value="Dell">Dell
                                                        </div>

                                                        <% if(cName.equals("Acer")){ %>
                                                        <div>
                                                            <input type="radio" class="" name="company_name" id="cn"
                                                                value="Acer" checked>Acer
                                                        </div>
                                                        <div>
                                                            <input type="radio" class="" name="company_name" id="cn"
                                                                value="Lenovo">Lenovo
                                                        </div>
                                                        <% } else { %>
                                                        <div>
                                                            <input type="radio" class="" name="company_name" id="cn"
                                                                value="Acer">Acer
                                                        </div>
                                                        <div>
                                                            <input type="radio" class="" name="company_name" id="cn"
                                                                value="Lenovo" checked>Lenovo
                                                        </div>
                                                        <% } %>
                                                        <% } %>
                                                    </div>
                                                    <div class="form-check">
                                                        <label class="form-label fw-bold pt-2"
                                                            style="font-family: verdana;" for="p">Price</label>
                                                        <input type="number" class="form-control" name="price" id="p"
                                                            value="<%= p.getPrice() %>">
                                                    </div>
                                                    <div class="form-check">
                                                        <label class="form-label fw-bold pt-2"
                                                            style="font-family: verdana;" for="q">Quantity</label>
                                                        <input type="number" class="form-control" name="quantity" id="q"
                                                            value="<%= p.getQuantity() %>">
                                                    </div>
                                                    <div class=" form-check pt-2">
                                                        <label class="form-label fw-bold" style="font-family: verdana;"
                                                            for="d">Discount</label>
                                                        <input type="number" class="form-control" name="discount" id="d"
                                                            value="<%= p.getDiscount() %>">
                                                    </div>
                                                    <div class=" form-check">
                                                        <label class="form-label pt-2 fw-bold"
                                                            style="font-family: verdana;" for="pd">Production
                                                            Date</label>
                                                        <input type="date" class="form-control" name="pd" id="pd"
                                                            value="<%= p.getProductionDate() %>">
                                                    </div>
                                                    <div>
                                                        <input type="hidden" name="product_id"
                                                            value="<%= p.getProductID() %>">
                                                    </div>
                                                    <div class="row pt-4 justify-content-center">
                                                        <div class="col-3">
                                                            <input type="submit" value="Update" onclick="run2()"
                                                                class="btn btn-primary px-3">
                                                        </div>
                                                    </div>
                                                </form>
                                                <script>
                                                    function run2() {
                                                        var form = document.querySelector("#form");
                                                        form.submit();
                                                    }
                                                </script>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </td>
                            <td>
                                <!-- Button trigger modal -->
                                <button type="button" class="btn text-primary" data-bs-toggle="modal"
                                    data-bs-target="#exampleModal">
                                    <span class="material-symbols-outlined">
                                        delete_sweep
                                    </span>
                                </button>

                                <div class="modal fade" data-bs-backdrop="static" id="exampleModal" tabindex="-1"
                                    aria-labelledby="exampleModalLabel" aria-hidden="true">
                                    <div class="modal-dialog">
                                        <div class="modal-content">
                                            <div class="modal-header">
                                                <h1 class="modal-title fs-4 text-danger" id="exampleModalLabel">Delete
                                                    Record</h1>
                                                <button type="button" class="btn-close" data-bs-dismiss="modal"
                                                    aria-label="Close"></button>
                                            </div>
                                            <div class="modal-body">
                                                <form action="delete.do" id="form1">

                                                    <%= productID %>
                                                    <div>
                                                        <label class="form-label fw-bold pt-2"
                                                            style="font-family: verdana;" for="">Do you really want to
                                                            delete this record?</label>
                                                        <input type="hidden" name="product_id" value="<%= productID %>">
                                                    </div>
                                                    <div class="row pt-4 justify-content-center">
                                                        <div class="col-3">
                                                            <input type="submit" value="Delete" onclick="run()"
                                                                class="btn btn-primary px-3">
                                                        </div>
                                                    </div>
                                                </form>
                                                <script>
                                                    function run() {
                                                        var form1 = document.querySelector("#form1");
                                                        form1.submit();
                                                    }
                                                </script>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </td>

                        </tr>
                        <% } %>
                    </tbody>
                </table>
            </div>
        </div>
        <div class="row justify-content-center">
            <div class="col-2">

                <!-- Button trigger modal -->
                <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#staticBackdrop">
                    <div class="fs-4">
                        Add Record
                    </div>
                </button>

                <!-- Modal -->
                <div class="modal fade" id="staticBackdrop" data-bs-backdrop="static" data-bs-keyboard="false"
                    tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h1 class="text-danger fs-4 font-bold modal-title fs-5" id="staticBackdropLabel">Add New
                                    Record
                                </h1>
                                <button type="button" class="btn-close" data-bs-dismiss="modal"
                                    aria-label="Close"></button>
                            </div>
                            <div class="modal-body">

                                <form action="add.do" class="" method="post" id="from2">
                                    <div class="form-check">
                                        <label class="form-label fw-bold pt-2" style="font-family: verdana;"
                                            for="pn">Product
                                            Name</label>
                                        <select name="product_name" id="pn" class="form-select">
                                            <option value="" selected>-----select product here-----</option>
                                            <option value="Smart Watch">Smart Watch</option>
                                            <option value="IPhone">IPhone</option>
                                            <option value="Laptop">Laptop</option>
                                            <option value="Phone">Phone</option>
                                            <option value="Tablet">Tablet</option>
                                        </select>

                                    </div>
                                    <div class="form-check">
                                        <label class="form-label fw-bold pt-2" style="font-family: verdana;"
                                            for="cn">Company
                                            Name:</label>
                                        <div>
                                            <input type="radio" class="" name="company_name" id="cn" value="Dell">Dell
                                        </div>
                                        <div>
                                            <input type="radio" class="" name="company_name" id="cn" value="Acer">Acer
                                        </div>
                                        <div>
                                            <input type="radio" class="" name="company_name" id="cn"
                                                value="Lenovo">Lenovo
                                        </div>
                                    </div>
                                    <div class="form-check">
                                        <label class="form-label fw-bold pt-2" style="font-family: verdana;"
                                            for="p">Price</label>
                                        <input type="number" class="form-control" name="price" id="p"
                                            placeholder="Enter price">
                                    </div>
                                    <div class="form-check">
                                        <label class="form-label fw-bold pt-2" style="font-family: verdana;"
                                            for="q">Quantity</label>
                                        <input type="number" class="form-control" name="quantity" id="q"
                                            placeholder="Enter quantity">
                                    </div>
                                    <div class="form-check pt-2">
                                        <label class="form-label fw-bold" style="font-family: verdana;"
                                            for="d">Discount</label>
                                        <input type="number" class="form-control" name="discount" id="d"
                                            placeholder="Enter discount">
                                    </div>
                                    <div class="form-check">
                                        <label class="form-label pt-2 fw-bold" style="font-family: verdana;"
                                            for="pd">Production
                                            Date</label>
                                        <input type="date" class="form-control" name="pd" id="pd">
                                    </div>
                                    <div class="row pt-4 justify-content-center">
                                        <div class="col-3">
                                            <input type="submit" value="Save" class="btn btn-primary px-3"
                                                onclick="run()">
                                        </div>
                                    </div>
                                </form>
                                <script>
                                    function run3() {
                                        var form2 = document.querySelector("#form2");
                                        form2.submit();
                                    }
                                </script>
                            </div>
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js">
    </script>
</body>

</html>