package com.dotantai.builder;

public class BuildingSearchBuilder {
	private String name;
	private String district;
	private String buildingArea;
	private String street;
	private String ward;
	private String numberOfBasement;
	private String areaRentFrom;
	private String areaRentTo;
	private String[] buildingTypes = new String[] {};
	private String costRentFrom;
	private String costRentTo;
	private String staffId;

	public String getStaffId() {
		return staffId;
	}

	public String getCostRentFrom() {
		return costRentFrom;
	}

	public String getCostRentTo() {
		return costRentTo;
	}

	public String[] getBuildingTypes() {
		return buildingTypes;
	}

	public String getName() {
		return name;
	}

	public String getDistrict() {
		return district;
	}

	public String getBuildingArea() {
		return buildingArea;
	}

	public String getStreet() {
		return street;
	}

	public String getWard() {
		return ward;
	}

	public String getNumberOfBasement() {
		return numberOfBasement;
	}

	public String getAreaRentFrom() {
		return areaRentFrom;
	}

	public String getAreaRentTo() {
		return areaRentTo;
	}

	private BuildingSearchBuilder(Builder builder) {

		this.name = builder.name;
		this.district = builder.district;
		this.buildingArea = builder.buildingArea;
		this.street = builder.street;
		this.ward = builder.ward;
		this.numberOfBasement = builder.numberOfBasement;
		this.areaRentFrom = builder.areaRentFrom;
		this.areaRentTo = builder.areaRentTo;
		this.buildingTypes = builder.buildingTypes;
		this.costRentFrom = builder.costRentFrom;
		this.costRentTo = builder.costRentTo;
		this.staffId = builder.staffId;
	}

	public static class Builder {
		private String name;
		private String district;
		private String buildingArea;
		private String street;
		private String ward;
		private String numberOfBasement;
		private String areaRentFrom;
		private String areaRentTo;
		private String[] buildingTypes = new String[] {};
		private String costRentFrom;
		private String costRentTo;
		private String staffId;

		public Builder setStaffId(String staffId) {
			this.staffId = staffId;
			return this;
		}

		public Builder setCostRentFrom(String costRentFrom) {
			this.costRentFrom = costRentFrom;
			return this;
		}

		public Builder setCostRentTo(String costRentTo) {
			this.costRentTo = costRentTo;
			return this;
		}

		public Builder setBuildingTypes(String[] buildingTypes) {
			this.buildingTypes = buildingTypes;
			return this;
		}

		public Builder setName(String name) {
			this.name = name;
			return this;
		}

		public Builder setDistrict(String district) {
			this.district = district;
			return this;
		}

		public Builder setBuildingArea(String buildingArea) {
			this.buildingArea = buildingArea;
			return this;
		}

		public Builder setStreet(String street) {
			this.street = street;
			return this;
		}

		public Builder setWard(String ward) {
			this.ward = ward;
			return this;
		}

		public Builder setNumberOfBasement(String numberOfBasement) {
			this.numberOfBasement = numberOfBasement;
			return this;
		}

		public Builder setAreaRentFrom(String areaRentFrom) {
			this.areaRentFrom = areaRentFrom;
			return this;
		}

		public Builder setAreaRentTo(String areaRentTo) {
			this.areaRentTo = areaRentTo;
			return this;
		}

		public BuildingSearchBuilder build() {
			return new BuildingSearchBuilder(this);
		}

	}

}
