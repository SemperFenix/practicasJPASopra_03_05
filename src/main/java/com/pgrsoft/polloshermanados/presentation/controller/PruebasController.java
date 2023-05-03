package com.pgrsoft.polloshermanados.presentation.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import com.pgrsoft.polloshermanados.integration.repositories.CamareroRepository;
import com.pgrsoft.polloshermanados.integration.repositories.CategoriaRepository;
import com.pgrsoft.polloshermanados.integration.repositories.ClienteRepository;
import com.pgrsoft.polloshermanados.integration.repositories.EstablecimientoRepository;
import com.pgrsoft.polloshermanados.integration.repositories.PedidoRepository;
import com.pgrsoft.polloshermanados.integration.repositories.ProductoRepository;
import com.pgrsoft.polloshermanados.model.Camarero;
import com.pgrsoft.polloshermanados.model.Categoria;
import com.pgrsoft.polloshermanados.model.Cliente;
import com.pgrsoft.polloshermanados.model.Establecimiento;
import com.pgrsoft.polloshermanados.model.Pedido;
import com.pgrsoft.polloshermanados.model.Producto;

@RestController
public class PruebasController {

	@Autowired
	private ProductoRepository productoRepository;

	@Autowired
	private CategoriaRepository categoriaRepository;

	@Autowired
	private PedidoRepository pedidoRepository;

	@Autowired
	private CamareroRepository camareroRepository;

	@Autowired
	private ClienteRepository clienteRepository;

	@Autowired
	private EstablecimientoRepository establecimientoRepository;

	@GetMapping("/productos")
	public List<Producto> getAllProductos() {
		return productoRepository.findAll();
	}

	@GetMapping("/categorias")
	public List<Categoria> getAllCategorias() {
		return categoriaRepository.findAll();
	}

	@GetMapping("/pedidos")
	public List<Pedido> getAllPedidos() {
		return pedidoRepository.findAll();
	}

	@GetMapping("/camareros")
	public List<Camarero> getAllCamareros() {
		return camareroRepository.findAll();
	}

	@GetMapping("/clientes")
	public List<Cliente> getAllClientes() {
		return clienteRepository.findAll();
	}

	@GetMapping("/establecimientos")
	public List<Establecimiento> getAllEstablecimientos() {
		return establecimientoRepository.findAll();
	}
}
