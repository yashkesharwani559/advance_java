package models;

import java.sql.Date;
import java.util.ArrayList;
import java.sql.*;

public class Product {

    // ##################### variables #########################
    private String productName;
    private String companyName;
    private Date productionDate;
    private Integer price;
    private Integer quantity;
    private Float discount;
    private Integer productID;

    // ##################### constructors ######################
    public Product(String productName, String companyName, Integer price, Integer quantity, Float discount,
            Date productionDate) {
        this.productName = productName;
        this.productionDate = productionDate;
        this.price = price;
        this.quantity = quantity;
        this.companyName = companyName;
        this.discount = discount;
    }

    public Product(Integer productID, String productName, String companyName, Integer price, Integer quantity,
            Float discount,
            Date productionDate) {
        this(productName, companyName, price, quantity, discount, productionDate);
        this.productID = productID;
    }

    public Product(Integer productID) {
        this.productID = productID;
    }

    // ##################### methods #########################

    public void deleteRecordProduct() {
        try {

            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager
                    .getConnection("jdbc:mysql://localhost:3306/productdb?user=root&password=1234");
            
            String query = "delete from products where product_id=?";

            PreparedStatement ps = con.prepareStatement(query);

            ps.setInt(1, productID);

            ps.executeUpdate();
            
        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
        }
    }

    public void updateProductRecord() {
        try {

            Class.forName("com.mysql.cj.jdbc.Driver");

            Connection con = DriverManager
                    .getConnection("jdbc:mysql://localhost:3306/productdb?user=root&password=1234");

            String query = "update products set product_name=?, company_name=?, price=?, quantity=?, discount=?, production_date=? where product_id=?";

            PreparedStatement ps = con.prepareStatement(query);

            ps.setString(1, productName);
            ps.setString(2, companyName);
            ps.setInt(3, price);
            ps.setInt(4, quantity);
            ps.setFloat(5, discount);
            ps.setDate(6, productionDate);
            ps.setInt(7, productID);

            ps.executeUpdate();

            con.close();

        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
        }
    }

    public void getRecordDetails() {
        try {

            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager
                    .getConnection("jdbc:mysql://localhost:3306/productdb?user=root&password=1234");

            String query = "select * from products where product_id=?";

            PreparedStatement ps = con.prepareStatement(query);

            ps.setInt(1, productID);

            ResultSet rs = ps.executeQuery();

            if (rs.next()) {
                productName = rs.getString("product_name");
                companyName = rs.getString("company_name");
                price = rs.getInt("price");
                quantity = rs.getInt("quantity");
                discount = rs.getFloat("discount");
                productionDate = rs.getDate("production_date");
            }

            con.close();

        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
        }
    }

    public boolean addRecord() {
        boolean flag = false;

        try {

            Class.forName("com.mysql.cj.jdbc.Driver");

            Connection con = DriverManager
                    .getConnection("jdbc:mysql://localhost:3306/productdb?user=root&password=1234");

            String query = "insert into products (product_name, company_name, price, quantity, discount, production_date) value (?, ?, ?, ?, ?, ?)";

            PreparedStatement ps = con.prepareStatement(query);

            ps.setString(1, productName);
            ps.setString(2, companyName);
            ps.setInt(3, price);
            ps.setInt(4, quantity);
            ps.setFloat(5, discount);
            ps.setDate(6, productionDate);

            if (ps.executeUpdate() > 0) {
                flag = true;
            }

            con.close();

        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
        }

        return flag;
    }

    public static ArrayList<Product> returnAllRecords() {

        ArrayList<Product> arr = new ArrayList<>();

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");

            Connection con = DriverManager
                    .getConnection("jdbc:mysql://localhost:3306/productdb?user=root&password=1234");

            String query = "select * from products";

            PreparedStatement ps = con.prepareStatement(query);

            ResultSet rs = ps.executeQuery();

            while (rs.next()) {

                Product p = new Product(rs.getInt("product_id"), rs.getString("product_name"),
                        rs.getString("company_name"), rs.getInt("price"), rs.getInt("quantity"),
                        rs.getFloat("discount"), rs.getDate("production_date"));

                arr.add(p);
            }

            con.close();

        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
        }

        return arr;
    }

    // ##################### getters #########################
    public String getProductName() {
        return productName;
    }

    public String getCompanyName() {
        return companyName;
    }

    public Date getProductionDate() {
        return productionDate;
    }

    public Integer getPrice() {
        return price;
    }

    public Integer getQuantity() {
        return quantity;
    }

    public Float getDiscount() {
        return discount;
    }

    public Integer getProductID() {
        return productID;
    }

}