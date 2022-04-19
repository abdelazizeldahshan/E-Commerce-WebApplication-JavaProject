package gov.iti.jets.shoppy.repository.impls;

import gov.iti.jets.shoppy.repository.entity.AdminEntity;
import gov.iti.jets.shoppy.repository.entity.CustomerEntity;
import gov.iti.jets.shoppy.repository.entity.UserEntity;
import gov.iti.jets.shoppy.repository.interfaces.UserRepo;
import jakarta.persistence.EntityExistsException;
import jakarta.persistence.EntityManager;
import jakarta.persistence.NoResultException;
import jakarta.persistence.Query;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

public class UserRepoImpl implements UserRepo {

//    private final static UserRepoImpl userRepo = new UserRepoImpl();
//    private UserRepoImpl() {}

//    public static UserRepoImpl getInstance() {
//        return userRepo;
//    }
    private EntityManager entityManager;
    public UserRepoImpl(EntityManager entityManager){
        this.entityManager = entityManager;
    }

    @Override
    public Optional<UserEntity> findUserById(long id) {
        var userEntity =entityManager.find(UserEntity.class, id);
        if(userEntity != null)
            return Optional.of(userEntity);
        return Optional.empty();
    }

    @Override
    public Optional<? extends UserEntity> findUser(String email, String password) {
        String select = "select  u from UserEntity u where u.email=:email and u.pass=:password";
        Query query = entityManager.createQuery(select);
        query.setParameter("email", email);
        query.setParameter("password", password);
        try {
            String entityType = query.getSingleResult().getClass().getName().substring(query.getSingleResult().getClass().getName().lastIndexOf(".")+1);
            if(entityType.equals("AdminEntity")){
                return Optional.of((AdminEntity) query.getSingleResult());
            }else {
                return Optional.of((CustomerEntity) query.getSingleResult());
            }
        }catch (NoResultException e) {
            return Optional.empty();
        }
    }

    @Override
    public boolean insertUser(UserEntity userEntity) {
        entityManager.getTransaction().begin();
        try {
            entityManager.persist(userEntity);
            entityManager.getTransaction().commit();
            return true;
        } catch (EntityExistsException exception){
            return false;
        }
    }

    @Override
    public boolean updateUser(UserEntity userEntity) {
        entityManager.getTransaction().begin();
        try {
            entityManager.merge(userEntity);
            entityManager.getTransaction().commit();
            return true;
        } catch (IllegalArgumentException exception){
            return false;
        }
    }

    @Override
    public boolean updateCustomerCreditLimit(Integer customerId, double amount) {
        try {
            entityManager.getTransaction().begin();
            var customer = entityManager.find(CustomerEntity.class,customerId);
            customer.setCreditLimit(amount);
            System.out.println(entityManager.merge(customer));
//            System.out.println(entityManager.createQuery("update CustomerEntity c set c.creditLimit = 1000 where c.id = 4").executeUpdate());
//                    .setParameter("creditLimit", customerEntity.getCreditLimit()).setParameter("id",customerEntity.getId()).getResultList());
            entityManager.getTransaction().commit();
            return true;
        } catch (Exception exception){
            exception.printStackTrace();
            return false;
        }
    }

}
