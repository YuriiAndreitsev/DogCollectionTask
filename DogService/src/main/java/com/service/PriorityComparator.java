package com.service;

import java.util.Comparator;
import java.util.List;
import com.model.Dog;

public class PriorityComparator implements Comparator<Dog> {
	List<Comparator<Dog>> compList;

	public PriorityComparator() {

	}

	public PriorityComparator(List<Comparator<Dog>> compList) {
		this.compList = compList;
		primary = compList.get(0);
		secondary = compList.get(1);
	}

	Comparator<Dog> primary;
	Comparator<Dog> secondary;

	@Override
	public int compare(Dog o1, Dog o2) {

		int result;
		if ((result = primary.compare(o1, o2)) == 0) {
			return secondary.compare(o1, o2);
		} else {
			return result;
		}

	}
}
