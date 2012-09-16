// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.mycompany.jsf.converter;

import com.mycompany.domain.Imagen;
import com.mycompany.jsf.converter.ImagenConverter;
import javax.faces.component.UIComponent;
import javax.faces.context.FacesContext;
import javax.faces.convert.Converter;
import javax.faces.convert.FacesConverter;

privileged aspect ImagenConverter_Roo_Converter {
    
    declare parents: ImagenConverter implements Converter;
    
    declare @type: ImagenConverter: @FacesConverter("com.mycompany.jsf.converter.ImagenConverter");
    
    public Object ImagenConverter.getAsObject(FacesContext context, UIComponent component, String value) {
        if (value == null || value.length() == 0) {
            return null;
        }
        Integer id = Integer.parseInt(value);
        return Imagen.findImagen(id);
    }
    
    public String ImagenConverter.getAsString(FacesContext context, UIComponent component, Object value) {
        return value instanceof Imagen ? ((Imagen) value).getCodigo().toString() : "";
    }
    
}