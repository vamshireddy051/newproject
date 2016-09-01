package com.vamshi.wheels.model;

import javax.persistence.CascadeType;
import javax.persistence.FetchType;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToOne;

public class CartItem {
	private int cartItemId;
	private AddProduct addProduct;
	private int quantity;
	private double total;
	@ManyToOne
	@JoinColumn(name="cartId")
	private Cart cart;
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	public int getCartItemId() {
		return cartItemId;
	}
	public void setCartItemId(int cartItemId) {
		this.cartItemId = cartItemId;
	}
	public AddProduct getAddProduct() {
		return addProduct;
	}
	public void setAddProduct(AddProduct addProduct) {
		this.addProduct = addProduct;
	}
	public double getTotal() {
		return total;
	}
	public void setTotal(double total) {
		this.total = total;
	}
	public Cart getCart() {
		return cart;
	}
	public void setCart(Cart cart) {
		this.cart = cart;
	}

}
