module debounce (
	input		CLK,
	input		RST,
	input		BTNIN,
	output	reg	BTNOUT
);

// 125MHzを分周し40MHzを作成
reg [21:0] cnt22;

wire en40hz = (cnt22 == 22'd3125000-1);

always @( posedge CLK ) begin
	if ( RST )
		cnt22 <= 22'h0;
	else if ( en40hz  )
		cnt22 <= 22'h0;
	else 
		cnt22 <= cnt22 + 22'h1;
end

// スイッチ入力をFF2個で受ける
reg ff1, ff2;

always @( posedge CLK ) begin
	if ( RST )
		BTNOUT <= 1'b0;
	else
		BTNOUT <= temp;
end

endmodule
