package com.pgrsoft.polloshermanados.presentation.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import com.pgrsoft.polloshermanados.integration.repositories.CamareroRepository;
import com.pgrsoft.polloshermanados.integration.repositories.CategoriaRepository;
import com.pgrsoft.polloshermanados.integration.repositories.PedidoRepository;
import com.pgrsoft.polloshermanados.integration.repositories.ProductoRepository;
import com.pgrsoft.polloshermanados.model.Camarero;
import com.pgrsoft.polloshermanados.model.Categoria;
import com.pgrsoft.polloshermanados.model.Pedido;
import com.pgrsoft.polloshermanados.model.Producto;

import jakarta.transaction.Transactional;

@RestController
public class ProductoController {

	@Autowired
	private ProductoRepository productoRepository;
	
	@Autowired
	private CategoriaRepository categoriaRepository;
	
	@Autowired
	private PedidoRepository pedidoRepository;
	
	@Autowired
	private CamareroRepository camareroRepository;
	
	@GetMapping("/productos")
	public List<Producto> getAllProductos(){
		return productoRepository.findAll();
	}
	
	@GetMapping("/categorias")
	public List<Categoria> getAllCategorias(){
		return categoriaRepository.findAll();
	}
	
	@GetMapping("/pedidos")
	public List<Pedido> getAllPedidos(){
		return pedidoRepository.findAll();
	}
	
	@GetMapping("/crearcamarero")
	@Transactional
	public Camarero crearCamareroRandom() {
		
		String randomDNI = "_" + Math.floor(Math.random() * 100);
		
		Camarero camarero = new Camarero();
		camarero.setDNI(randomDNI);
		camarero.setNombre("nombre_" + randomDNI);
		camarero.setApellido1("apellido1_" + randomDNI);
		camarero.setApellido2("apellido2_" + randomDNI);
		
		camareroRepository.save(camarero);
		
		return camarero;
	}
	
}
