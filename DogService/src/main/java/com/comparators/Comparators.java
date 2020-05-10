package com.comparators;

import java.util.Comparator;

import com.model.Dog;

public enum Comparators implements Comparator<Dog> {
	BREED(Comparator.comparing(Dog::getBreed)), PRICE(Comparator.comparing(Dog::getPrice)),
	NAME(Comparator.comparing(Dog::getName)), AGE(Comparator.comparing(Dog::getAge)),
	TYPE(Comparator.comparing(Dog::getType)), TAIL(Comparator.comparing(Dog::getTail)),
	COLOR(Comparator.comparing(Dog::getColor)), FLEA(Comparator.comparing(Dog::isFlea));

	Comparator<Dog> comparator;

	Comparators(Comparator<Dog> comparator) {
		this.comparator = comparator;
	}

	@Override
	public int compare(Dog o1, Dog o2) {
		int result = comparator.compare(o1, o2);
		if (result != 0) {
			return result;
		}
		return 0;
	}

}
