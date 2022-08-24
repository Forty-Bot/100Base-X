// SPDX-License-Identifier: AGPL-3.0-Only
/*
 * Copyright (C) 2022 Sean Anderson <seanga2@gmail.com>
 */

`include "common.vh"

module nrzi_encode (
	input clk,
	input nrz,
	output reg nrzi
);

	reg nrzi_next;
	initial nrzi = 1;

	always @(*)
		nrzi_next = nrz ^ nrzi;

	always @(posedge clk)
		nrzi <= nrzi_next;

	`DUMP(0)

endmodule
