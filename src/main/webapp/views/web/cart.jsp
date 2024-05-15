<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>
<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html lang="en">

<head>
<meta charset="utf-8">
<title>EShopper - Bootstrap Shop Template</title>
<meta content="width=device-width, initial-scale=1.0" name="viewport">
<meta content="Free HTML Templates" name="keywords">
<meta content="Free HTML Templates" name="description">

</head>

<body>
	<!-- Cart Start -->
	<div class="container-fluid pt-5">
		<div class="row px-xl-5">
			<div class="col-lg-8 table-responsive mb-5">
				<table class="table table-bordered text-center mb-0">
					<thead class="bg-secondary text-dark">
						<tr>
							<th>Products</th>
							<th>Price</th>
							<th>Quantity</th>
							<th>Total</th>
							<th>Remove</th>
						</tr>
					</thead>
					<tbody class="align-middle">
						<c:forEach var="cartItem" items="${cartItems}">
							<tr>
								<td class="align-middle"><c:url
										value="/image?fname=product/${cartItem.product.images}"
										var="imgUrl"></c:url> <img src="${imgUrl}"
									style="width: 50px;" alt="Image">
									${cartItem.product.productName}</td>
								<td class="align-middle">${cartItem.product.price}</td>
								<td class="align-middle">
									<div class="input-group quantity mx-auto" style="width: 100px;">
											 <form action="updatequantity" method="post">
											<div class="input-group quantity mx-auto"
												style="width: 100px;">
												<div class="input-group-btn">
													<button class="btn btn-sm btn-primary btn-minus"
														name="action" value="minus">
														<i class="fa fa-minus"></i>
													</button>
												</div>
												<input type="text"
													class="form-control form-control-sm bg-secondary text-center"
													name="quantity" value="${cartItem.quantity}">
												<div class="input-group-btn">
													<button class="btn btn-sm btn-primary btn-plus"
														name="action" value="plus">
														<i class="fa fa-plus"></i>
													</button>
												</div>
											</div>
											<input type="hidden" name="cartItemID"
												value="${cartItem.cartitemID}">
										</form>
									</div>
								</td>
								<td class="align-middle">${cartItem.total}</td>
								<td class="align-middle">
									<form action="deleteCartItem" method="post">
										<button class="btn btn-sm btn-primary">
											<i class="fa fa-times"></i>
										</button>
										<input type="hidden" name="cartItemID"
											value="${cartItem.cartitemID}">
									</form>
								</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
			<div class="col-lg-4">
				<form action="addorder" method="post">
					<div class="card border-secondary mb-5">
						<select class="btn btn-primary" name="paymentID" id="paymentID">
							<c:forEach var="payment" items="${payments}">
								<option name="paymentName" value="${payment.paymentID}">${payment.paymentName}</option>
							</c:forEach>
						</select>
					</div>
					<div class="card border-secondary mb-5">
						<div class="card-header bg-secondary border-0">
							<h4 class="font-weight-semi-bold m-0">Cart Summary</h4>
						</div>
						<div class="card-footer border-secondary bg-transparent">
							<div class="d-flex justify-content-between mt-2">
								<h5 class="font-weight-bold">Total</h5>
								<h5 class="font-weight-bold" name="total" id="total">$0</h5>
								<!-- Add a hidden input field for total -->
								<%
									
								%>
								<input type="hidden" name="total" id="hiddenTotal" value="0">
							</div>
							<div class="col-lg-8 mx-auto text-center mb-5">
								<input type="hidden" name="cartID" id="cartID"
									value="${cart.cartID}">
								<button type="submit" class="btn btn-primary">Proceed
									to Payment</button>
							</div>
						</div>
					</div>
				</form>
			</div>
		</div>

	</div>
	<!-- Cart End -->


	<!-- Back to Top -->
	<a href="#" class="btn btn-primary back-to-top"><i
		class="fa fa-angle-double-up"></i></a>
<script>
    document.addEventListener("DOMContentLoaded", function () {
        // Add event listener to quantity inputs for real-time updates
        var quantityInputs = document.querySelectorAll('.form-control-sm');
        quantityInputs.forEach(function (input) {
            input.addEventListener('input', function () {
                updateTotal();
            });
        });

        // Function to update the total based on cart items
        function updateTotal() {
            var total = 0;

            // Loop through each row in the table
            var tableRows = document.querySelectorAll('tbody tr');
            tableRows.forEach(function (row) {
                // Get the total value from the current row and add it to the overall total
                var rowTotal = parseInt(row.querySelector('.align-middle:nth-child(4)').textContent);
                total += isNaN(rowTotal) ? 0 : rowTotal;
            });

            // Display the calculated total in the 'total' element
            var totalElement = document.getElementById('total');
            if (totalElement) {
                totalElement.textContent = total; // Display the total as an integer
            }

            // Update the hidden input field with the total value
            var hiddenTotalInput = document.getElementById('hiddenTotal');
            if (hiddenTotalInput) {
                hiddenTotalInput.value = total;
            }

            // Show or hide the total section based on whether there are products
            var cartSummary = document.querySelector('.card.border-secondary.mb-5');
            if (cartSummary) {
                cartSummary.style.display = total > 0 ? 'block' : 'none';
            }
        }

        // Initial calculation when the page is loaded
        updateTotal();

        // Add event listener to the form submission
        var orderForm = document.querySelector('form[action="addorder"]');
        if (orderForm) {
            orderForm.addEventListener('submit', function () {
                // Ensure the total is up-to-date before submitting the form
                updateTotal();
            });
        }
    });
</script>
</body>

</html>