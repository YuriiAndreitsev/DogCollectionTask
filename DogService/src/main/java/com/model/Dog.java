package com.model;

public class Dog {
	private String breed;
	private int price;
	private String name;
	private int age;
	private String type;
	private int tail;
	private String color;
	private boolean flea;

	public String getBreed() {
		return breed;
	}

	public int getPrice() {
		return price;
	}

	public String getName() {
		return name;
	}

	public int getAge() {
		return age;
	}

	public String getType() {
		return type;
	}

	public int getTail() {
		return tail;
	}

	public String getColor() {
		return color;
	}

	public boolean isFlea() {
		return flea;
	}

	public void setBreed(String breed) {
		this.breed = breed;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public void setName(String name) {
		this.name = name;
	}

	public void setAge(int age) {
		this.age = age;
	}

	public void setType(String type) {
		this.type = type;
	}

	public void setTail(int tail) {
		this.tail = tail;
	}

	public void setColor(String color) {
		this.color = color;
	}

	public void setFlea(boolean flea) {
		this.flea = flea;
	}

	public Dog(String breed, int price, String name, int age, String type, int tail, String color, boolean flea) {
		super();
		this.breed = breed;
		this.price = price;
		this.name = name;
		this.age = age;
		this.type = type;
		this.tail = tail;
		this.color = color;
		this.flea = flea;
	}

	public Dog() {
		super();
		// TODO Auto-generated constructor stub
	}

	@Override
	public String toString() {
		return "Dog [breed=" + breed + ", price=" + price + ", name=" + name + ", age=" + age + ", type=" + type
				+ ", tail=" + tail + ", color=" + color + ", flea=" + flea + "]\n";
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + age;
		result = prime * result + ((breed == null) ? 0 : breed.hashCode());
		result = prime * result + ((color == null) ? 0 : color.hashCode());
		result = prime * result + (flea ? 1231 : 1237);
		result = prime * result + ((name == null) ? 0 : name.hashCode());
		result = prime * result + price;
		result = prime * result + tail;
		result = prime * result + ((type == null) ? 0 : type.hashCode());
		return result;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Dog other = (Dog) obj;
		if (age != other.age)
			return false;
		if (breed == null) {
			if (other.breed != null)
				return false;
		} else if (!breed.equals(other.breed))
			return false;
		if (color == null) {
			if (other.color != null)
				return false;
		} else if (!color.equals(other.color))
			return false;
		if (flea != other.flea)
			return false;
		if (name == null) {
			if (other.name != null)
				return false;
		} else if (!name.equals(other.name))
			return false;
		if (price != other.price)
			return false;
		if (tail != other.tail)
			return false;
		if (type == null) {
			if (other.type != null)
				return false;
		} else if (!type.equals(other.type))
			return false;
		return true;
	}

}
