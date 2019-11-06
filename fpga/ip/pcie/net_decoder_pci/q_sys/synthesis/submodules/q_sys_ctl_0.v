// q_sys_ctl_0.v

// Generated using ACDS version 18.1 625

`timescale 1 ps / 1 ps
module q_sys_ctl_0 (
		input  wire         clk_clk,                                                 //                                         clk.clk
		input  wire         reset_reset_n,                                           //                                       reset.reset_n
		input  wire [31:0]  modular_sgdma_dispatcher_0_csr_writedata,                //              modular_sgdma_dispatcher_0_csr.writedata
		input  wire         modular_sgdma_dispatcher_0_csr_write,                    //                                            .write
		input  wire [3:0]   modular_sgdma_dispatcher_0_csr_byteenable,               //                                            .byteenable
		output wire [31:0]  modular_sgdma_dispatcher_0_csr_readdata,                 //                                            .readdata
		input  wire         modular_sgdma_dispatcher_0_csr_read,                     //                                            .read
		input  wire [2:0]   modular_sgdma_dispatcher_0_csr_address,                  //                                            .address
		input  wire         modular_sgdma_dispatcher_0_descriptor_slave_write,       // modular_sgdma_dispatcher_0_descriptor_slave.write
		output wire         modular_sgdma_dispatcher_0_descriptor_slave_waitrequest, //                                            .waitrequest
		input  wire [127:0] modular_sgdma_dispatcher_0_descriptor_slave_writedata,   //                                            .writedata
		input  wire [15:0]  modular_sgdma_dispatcher_0_descriptor_slave_byteenable,  //                                            .byteenable
		output wire [26:0]  dma_read_master_0_data_read_master_address,              //          dma_read_master_0_data_read_master.address
		output wire         dma_read_master_0_data_read_master_read,                 //                                            .read
		output wire [15:0]  dma_read_master_0_data_read_master_byteenable,           //                                            .byteenable
		input  wire [127:0] dma_read_master_0_data_read_master_readdata,             //                                            .readdata
		input  wire         dma_read_master_0_data_read_master_waitrequest,          //                                            .waitrequest
		input  wire         dma_read_master_0_data_read_master_readdatavalid,        //                                            .readdatavalid
		output wire [6:0]   dma_read_master_0_data_read_master_burstcount,           //                                            .burstcount
		output wire [26:0]  dma_write_master_0_data_write_master_address,            //        dma_write_master_0_data_write_master.address
		output wire         dma_write_master_0_data_write_master_write,              //                                            .write
		output wire [15:0]  dma_write_master_0_data_write_master_byteenable,         //                                            .byteenable
		output wire [127:0] dma_write_master_0_data_write_master_writedata,          //                                            .writedata
		input  wire         dma_write_master_0_data_write_master_waitrequest,        //                                            .waitrequest
		output wire [7:0]   dma_write_master_0_data_write_master_burstcount,         //                                            .burstcount
		output wire         modular_sgdma_dispatcher_0_csr_irq_irq                   //          modular_sgdma_dispatcher_0_csr_irq.irq
	);

	wire          modular_sgdma_dispatcher_0_write_command_source_valid; // modular_sgdma_dispatcher_0:src_write_master_valid -> dma_write_master_0:snk_command_valid
	wire  [255:0] modular_sgdma_dispatcher_0_write_command_source_data;  // modular_sgdma_dispatcher_0:src_write_master_data -> dma_write_master_0:snk_command_data
	wire          modular_sgdma_dispatcher_0_write_command_source_ready; // dma_write_master_0:snk_command_ready -> modular_sgdma_dispatcher_0:src_write_master_ready
	wire          dma_write_master_0_response_source_valid;              // dma_write_master_0:src_response_valid -> modular_sgdma_dispatcher_0:snk_write_master_valid
	wire  [255:0] dma_write_master_0_response_source_data;               // dma_write_master_0:src_response_data -> modular_sgdma_dispatcher_0:snk_write_master_data
	wire          dma_write_master_0_response_source_ready;              // modular_sgdma_dispatcher_0:snk_write_master_ready -> dma_write_master_0:src_response_ready
	wire          modular_sgdma_dispatcher_0_read_command_source_valid;  // modular_sgdma_dispatcher_0:src_read_master_valid -> dma_read_master_0:snk_command_valid
	wire  [255:0] modular_sgdma_dispatcher_0_read_command_source_data;   // modular_sgdma_dispatcher_0:src_read_master_data -> dma_read_master_0:snk_command_data
	wire          modular_sgdma_dispatcher_0_read_command_source_ready;  // dma_read_master_0:snk_command_ready -> modular_sgdma_dispatcher_0:src_read_master_ready
	wire          dma_read_master_0_response_source_valid;               // dma_read_master_0:src_response_valid -> modular_sgdma_dispatcher_0:snk_read_master_valid
	wire  [255:0] dma_read_master_0_response_source_data;                // dma_read_master_0:src_response_data -> modular_sgdma_dispatcher_0:snk_read_master_data
	wire          dma_read_master_0_response_source_ready;               // modular_sgdma_dispatcher_0:snk_read_master_ready -> dma_read_master_0:src_response_ready
	wire          dma_read_master_0_data_source_valid;                   // dma_read_master_0:src_valid -> dma_write_master_0:snk_valid
	wire  [127:0] dma_read_master_0_data_source_data;                    // dma_read_master_0:src_data -> dma_write_master_0:snk_data
	wire          dma_read_master_0_data_source_ready;                   // dma_write_master_0:snk_ready -> dma_read_master_0:src_ready
	wire          rst_controller_reset_out_reset;                        // rst_controller:reset_out -> [dma_read_master_0:reset, dma_write_master_0:reset, modular_sgdma_dispatcher_0:reset]

	dispatcher #(
		.MODE                        (0),
		.RESPONSE_PORT               (2),
		.DESCRIPTOR_FIFO_DEPTH       (64),
		.ENHANCED_FEATURES           (0),
		.DESCRIPTOR_WIDTH            (128),
		.DESCRIPTOR_BYTEENABLE_WIDTH (16),
		.CSR_ADDRESS_WIDTH           (3)
	) modular_sgdma_dispatcher_0 (
		.clk                     (clk_clk),                                                 //                clock.clk
		.reset                   (rst_controller_reset_out_reset),                          //          clock_reset.reset
		.csr_writedata           (modular_sgdma_dispatcher_0_csr_writedata),                //                  CSR.writedata
		.csr_write               (modular_sgdma_dispatcher_0_csr_write),                    //                     .write
		.csr_byteenable          (modular_sgdma_dispatcher_0_csr_byteenable),               //                     .byteenable
		.csr_readdata            (modular_sgdma_dispatcher_0_csr_readdata),                 //                     .readdata
		.csr_read                (modular_sgdma_dispatcher_0_csr_read),                     //                     .read
		.csr_address             (modular_sgdma_dispatcher_0_csr_address),                  //                     .address
		.descriptor_write        (modular_sgdma_dispatcher_0_descriptor_slave_write),       //     Descriptor_Slave.write
		.descriptor_waitrequest  (modular_sgdma_dispatcher_0_descriptor_slave_waitrequest), //                     .waitrequest
		.descriptor_writedata    (modular_sgdma_dispatcher_0_descriptor_slave_writedata),   //                     .writedata
		.descriptor_byteenable   (modular_sgdma_dispatcher_0_descriptor_slave_byteenable),  //                     .byteenable
		.src_write_master_data   (modular_sgdma_dispatcher_0_write_command_source_data),    // Write_Command_Source.data
		.src_write_master_valid  (modular_sgdma_dispatcher_0_write_command_source_valid),   //                     .valid
		.src_write_master_ready  (modular_sgdma_dispatcher_0_write_command_source_ready),   //                     .ready
		.snk_write_master_data   (dma_write_master_0_response_source_data),                 //  Write_Response_Sink.data
		.snk_write_master_valid  (dma_write_master_0_response_source_valid),                //                     .valid
		.snk_write_master_ready  (dma_write_master_0_response_source_ready),                //                     .ready
		.src_read_master_data    (modular_sgdma_dispatcher_0_read_command_source_data),     //  Read_Command_Source.data
		.src_read_master_valid   (modular_sgdma_dispatcher_0_read_command_source_valid),    //                     .valid
		.src_read_master_ready   (modular_sgdma_dispatcher_0_read_command_source_ready),    //                     .ready
		.snk_read_master_data    (dma_read_master_0_response_source_data),                  //   Read_Response_Sink.data
		.snk_read_master_valid   (dma_read_master_0_response_source_valid),                 //                     .valid
		.snk_read_master_ready   (dma_read_master_0_response_source_ready),                 //                     .ready
		.csr_irq                 (modular_sgdma_dispatcher_0_csr_irq_irq),                  //              csr_irq.irq
		.src_response_data       (),                                                        //          (terminated)
		.src_response_valid      (),                                                        //          (terminated)
		.src_response_ready      (1'b0),                                                    //          (terminated)
		.mm_response_waitrequest (),                                                        //          (terminated)
		.mm_response_byteenable  (4'b0000),                                                 //          (terminated)
		.mm_response_address     (1'b0),                                                    //          (terminated)
		.mm_response_readdata    (),                                                        //          (terminated)
		.mm_response_read        (1'b0)                                                     //          (terminated)
	);

	read_master #(
		.DATA_WIDTH                (128),
		.LENGTH_WIDTH              (19),
		.FIFO_DEPTH                (256),
		.STRIDE_ENABLE             (0),
		.BURST_ENABLE              (1),
		.PACKET_ENABLE             (0),
		.ERROR_ENABLE              (0),
		.ERROR_WIDTH               (8),
		.CHANNEL_ENABLE            (0),
		.CHANNEL_WIDTH             (8),
		.BYTE_ENABLE_WIDTH         (16),
		.BYTE_ENABLE_WIDTH_LOG2    (4),
		.ADDRESS_WIDTH             (27),
		.FIFO_DEPTH_LOG2           (8),
		.SYMBOL_WIDTH              (8),
		.NUMBER_OF_SYMBOLS         (16),
		.NUMBER_OF_SYMBOLS_LOG2    (4),
		.MAX_BURST_COUNT_WIDTH     (7),
		.UNALIGNED_ACCESSES_ENABLE (0),
		.ONLY_FULL_ACCESS_ENABLE   (1),
		.BURST_WRAPPING_SUPPORT    (0),
		.PROGRAMMABLE_BURST_ENABLE (0),
		.MAX_BURST_COUNT           (64),
		.FIFO_SPEED_OPTIMIZATION   (1),
		.STRIDE_WIDTH              (1)
	) dma_read_master_0 (
		.clk                  (clk_clk),                                              //            Clock.clk
		.reset                (rst_controller_reset_out_reset),                       //      Clock_reset.reset
		.master_address       (dma_read_master_0_data_read_master_address),           // Data_Read_Master.address
		.master_read          (dma_read_master_0_data_read_master_read),              //                 .read
		.master_byteenable    (dma_read_master_0_data_read_master_byteenable),        //                 .byteenable
		.master_readdata      (dma_read_master_0_data_read_master_readdata),          //                 .readdata
		.master_waitrequest   (dma_read_master_0_data_read_master_waitrequest),       //                 .waitrequest
		.master_readdatavalid (dma_read_master_0_data_read_master_readdatavalid),     //                 .readdatavalid
		.master_burstcount    (dma_read_master_0_data_read_master_burstcount),        //                 .burstcount
		.src_data             (dma_read_master_0_data_source_data),                   //      Data_Source.data
		.src_valid            (dma_read_master_0_data_source_valid),                  //                 .valid
		.src_ready            (dma_read_master_0_data_source_ready),                  //                 .ready
		.snk_command_data     (modular_sgdma_dispatcher_0_read_command_source_data),  //     Command_Sink.data
		.snk_command_valid    (modular_sgdma_dispatcher_0_read_command_source_valid), //                 .valid
		.snk_command_ready    (modular_sgdma_dispatcher_0_read_command_source_ready), //                 .ready
		.src_response_data    (dma_read_master_0_response_source_data),               //  Response_Source.data
		.src_response_valid   (dma_read_master_0_response_source_valid),              //                 .valid
		.src_response_ready   (dma_read_master_0_response_source_ready),              //                 .ready
		.src_sop              (),                                                     //      (terminated)
		.src_eop              (),                                                     //      (terminated)
		.src_empty            (),                                                     //      (terminated)
		.src_error            (),                                                     //      (terminated)
		.src_channel          ()                                                      //      (terminated)
	);

	write_master #(
		.DATA_WIDTH                     (128),
		.LENGTH_WIDTH                   (19),
		.FIFO_DEPTH                     (256),
		.STRIDE_ENABLE                  (0),
		.BURST_ENABLE                   (1),
		.PACKET_ENABLE                  (0),
		.ERROR_ENABLE                   (0),
		.ERROR_WIDTH                    (8),
		.BYTE_ENABLE_WIDTH              (16),
		.BYTE_ENABLE_WIDTH_LOG2         (4),
		.ADDRESS_WIDTH                  (27),
		.FIFO_DEPTH_LOG2                (8),
		.SYMBOL_WIDTH                   (8),
		.NUMBER_OF_SYMBOLS              (16),
		.NUMBER_OF_SYMBOLS_LOG2         (4),
		.MAX_BURST_COUNT_WIDTH          (8),
		.UNALIGNED_ACCESSES_ENABLE      (0),
		.ONLY_FULL_ACCESS_ENABLE        (1),
		.BURST_WRAPPING_SUPPORT         (0),
		.PROGRAMMABLE_BURST_ENABLE      (0),
		.MAX_BURST_COUNT                (128),
		.FIFO_SPEED_OPTIMIZATION        (1),
		.STRIDE_WIDTH                   (1),
		.ACTUAL_BYTES_TRANSFERRED_WIDTH (32)
	) dma_write_master_0 (
		.clk                (clk_clk),                                               //             Clock.clk
		.reset              (rst_controller_reset_out_reset),                        //       Clock_reset.reset
		.master_address     (dma_write_master_0_data_write_master_address),          // Data_Write_Master.address
		.master_write       (dma_write_master_0_data_write_master_write),            //                  .write
		.master_byteenable  (dma_write_master_0_data_write_master_byteenable),       //                  .byteenable
		.master_writedata   (dma_write_master_0_data_write_master_writedata),        //                  .writedata
		.master_waitrequest (dma_write_master_0_data_write_master_waitrequest),      //                  .waitrequest
		.master_burstcount  (dma_write_master_0_data_write_master_burstcount),       //                  .burstcount
		.snk_data           (dma_read_master_0_data_source_data),                    //         Data_Sink.data
		.snk_valid          (dma_read_master_0_data_source_valid),                   //                  .valid
		.snk_ready          (dma_read_master_0_data_source_ready),                   //                  .ready
		.snk_command_data   (modular_sgdma_dispatcher_0_write_command_source_data),  //      Command_Sink.data
		.snk_command_valid  (modular_sgdma_dispatcher_0_write_command_source_valid), //                  .valid
		.snk_command_ready  (modular_sgdma_dispatcher_0_write_command_source_ready), //                  .ready
		.src_response_data  (dma_write_master_0_response_source_data),               //   Response_Source.data
		.src_response_valid (dma_write_master_0_response_source_valid),              //                  .valid
		.src_response_ready (dma_write_master_0_response_source_ready),              //                  .ready
		.snk_sop            (1'b0),                                                  //       (terminated)
		.snk_eop            (1'b0),                                                  //       (terminated)
		.snk_empty          (4'b0000),                                               //       (terminated)
		.snk_error          (8'b00000000)                                            //       (terminated)
	);

	altera_reset_controller #(
		.NUM_RESET_INPUTS          (1),
		.OUTPUT_RESET_SYNC_EDGES   ("deassert"),
		.SYNC_DEPTH                (2),
		.RESET_REQUEST_PRESENT     (0),
		.RESET_REQ_WAIT_TIME       (1),
		.MIN_RST_ASSERTION_TIME    (3),
		.RESET_REQ_EARLY_DSRT_TIME (1),
		.USE_RESET_REQUEST_IN0     (0),
		.USE_RESET_REQUEST_IN1     (0),
		.USE_RESET_REQUEST_IN2     (0),
		.USE_RESET_REQUEST_IN3     (0),
		.USE_RESET_REQUEST_IN4     (0),
		.USE_RESET_REQUEST_IN5     (0),
		.USE_RESET_REQUEST_IN6     (0),
		.USE_RESET_REQUEST_IN7     (0),
		.USE_RESET_REQUEST_IN8     (0),
		.USE_RESET_REQUEST_IN9     (0),
		.USE_RESET_REQUEST_IN10    (0),
		.USE_RESET_REQUEST_IN11    (0),
		.USE_RESET_REQUEST_IN12    (0),
		.USE_RESET_REQUEST_IN13    (0),
		.USE_RESET_REQUEST_IN14    (0),
		.USE_RESET_REQUEST_IN15    (0),
		.ADAPT_RESET_REQUEST       (0)
	) rst_controller (
		.reset_in0      (~reset_reset_n),                 // reset_in0.reset
		.clk            (clk_clk),                        //       clk.clk
		.reset_out      (rst_controller_reset_out_reset), // reset_out.reset
		.reset_req      (),                               // (terminated)
		.reset_req_in0  (1'b0),                           // (terminated)
		.reset_in1      (1'b0),                           // (terminated)
		.reset_req_in1  (1'b0),                           // (terminated)
		.reset_in2      (1'b0),                           // (terminated)
		.reset_req_in2  (1'b0),                           // (terminated)
		.reset_in3      (1'b0),                           // (terminated)
		.reset_req_in3  (1'b0),                           // (terminated)
		.reset_in4      (1'b0),                           // (terminated)
		.reset_req_in4  (1'b0),                           // (terminated)
		.reset_in5      (1'b0),                           // (terminated)
		.reset_req_in5  (1'b0),                           // (terminated)
		.reset_in6      (1'b0),                           // (terminated)
		.reset_req_in6  (1'b0),                           // (terminated)
		.reset_in7      (1'b0),                           // (terminated)
		.reset_req_in7  (1'b0),                           // (terminated)
		.reset_in8      (1'b0),                           // (terminated)
		.reset_req_in8  (1'b0),                           // (terminated)
		.reset_in9      (1'b0),                           // (terminated)
		.reset_req_in9  (1'b0),                           // (terminated)
		.reset_in10     (1'b0),                           // (terminated)
		.reset_req_in10 (1'b0),                           // (terminated)
		.reset_in11     (1'b0),                           // (terminated)
		.reset_req_in11 (1'b0),                           // (terminated)
		.reset_in12     (1'b0),                           // (terminated)
		.reset_req_in12 (1'b0),                           // (terminated)
		.reset_in13     (1'b0),                           // (terminated)
		.reset_req_in13 (1'b0),                           // (terminated)
		.reset_in14     (1'b0),                           // (terminated)
		.reset_req_in14 (1'b0),                           // (terminated)
		.reset_in15     (1'b0),                           // (terminated)
		.reset_req_in15 (1'b0)                            // (terminated)
	);

endmodule