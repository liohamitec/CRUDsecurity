package net.mysite.crudsecurity.service.data;

import java.util.Collection;

public interface GenericDataService<T,ID> {
    void add(T t);
    void remove(ID id);
    void update(T t);
    T getById(ID id);
    Collection<T> getAll();
}
