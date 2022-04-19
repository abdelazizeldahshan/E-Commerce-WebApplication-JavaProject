package gov.iti.jets.shoppy.repository.impls;

import gov.iti.jets.shoppy.repository.entity.ProductEntity;
import gov.iti.jets.shoppy.repository.interfaces.ProductRepo;
import gov.iti.jets.shoppy.repository.util.ImageUtility;
import jakarta.persistence.EntityManager;
import jakarta.persistence.Query;

import java.util.List;
import java.util.Optional;

public class ProductRepoImp implements ProductRepo {
    private static int pageSize = 12;
    private ImageUtility imageUtility = ImageUtility.getInstance();
    private final EntityManager entityManager;

    public ProductRepoImp(EntityManager entityManager) {
        this.entityManager = entityManager;
    }

    @Override
    public List<ProductEntity> getAllProducts() {
        return entityManager.createQuery("from ProductEntity", ProductEntity.class).getResultList();
    }

    @Override
    public List<ProductEntity> getProducts(int pageNumber) {
        Query query = entityManager.createQuery("from ProductEntity", ProductEntity.class);
        query.setFirstResult((pageNumber-1) * pageSize);
        query.setMaxResults(pageSize);
        return query.getResultList();
    }

    @Override
    public Long getProductsCount() {
        return entityManager.createQuery("select count(*) from ProductEntity", Long.class)
                        .getSingleResult();
    }

    @Override
    public Optional<ProductEntity> findProductById(Integer id) {
        return Optional.of(entityManager.find(ProductEntity.class, id));
    }

    @Override
    public boolean updateProduct(ProductEntity productEntity) {
        entityManager.getTransaction().begin();
        try {
            entityManager.merge(productEntity);
            entityManager.getTransaction().commit();
            return true;
        } catch (IllegalArgumentException exception){
            return false;
        }
    }

    @Override
    public boolean addProduct(ProductEntity productEntity, List<String> encodedImages) {
        System.out.println(productEntity);
        boolean added = false;
        try {
            entityManager.getTransaction().begin();
            //should add image path here
            productEntity.setImgPath("products");
            entityManager.persist(productEntity);
            entityManager.getTransaction().commit();
            imageUtility.saveImages(productEntity.getId(), encodedImages);
            System.out.println("test s");
            added = true;
        } catch (IllegalArgumentException exception){
            exception.printStackTrace();
        }
        return added;
    }

}
