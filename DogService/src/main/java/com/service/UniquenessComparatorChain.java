package com.service;

import java.util.Arrays;
import java.util.Collection;
import java.util.Comparator;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap.KeySetView;
import java.util.function.Function;

import com.comparators.Comparators;
import com.model.Dog;

public class UniquenessComparatorChain {

	private List<Comparator<Dog>> listComparators;

	public UniquenessComparatorChain() {

	}

	public UniquenessComparatorChain(Comparator<Dog>... comparators) {
		this.listComparators = Arrays.asList(comparators);
	}

	public Collection<Comparator<Dog>> createUniquenessComparatorCollection(Map<Comparator<Dog>, Boolean> map) {
		Collection<Comparator<Dog>> result = new HashSet<>();
		map.forEach((k, v) -> {
			if (v) {
				result.add(k);
			}
		});
		result.remove(null);
		return result;
	}

	public <T extends Comparable<? super T>> Comparator<Dog> enableComparator(boolean enable,
			Function<? super Dog, ? extends String> function) {
		if (enable) {
			return Comparator.comparing(function);
		}
		return null;
	}

	public Comparator<Dog> createChainComparator(Collection<Comparator<Dog>> comparators) {
		return comparators.stream().reduce((o1, o2) -> 0, Comparator::thenComparing);
	}

}
