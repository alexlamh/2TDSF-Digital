package br.com.fiap.spring.model;

public enum Tipo {

	TEORICA("Te�rico"), PRATICA("Pr�tica");
	
	private final String label;

	private Tipo(String label) {
		this.label = label;
	}
	
	public String getLabel() {
		return label;
	}
	
}