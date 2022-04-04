package gov.iti.jets.shoppy.service.dtos;

import gov.iti.jets.shoppy.repository.entity.ProductCategory;
import lombok.Builder;
import lombok.Data;

@Data
@Builder
public class ProductDto {
    private Integer id;
    private String productName;
    private String productDesc;
    private double price;
    private ProductCategory category;
    private Integer stock;
    private String imgPath;
}
