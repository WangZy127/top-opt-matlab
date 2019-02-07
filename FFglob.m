function dNglob = FFglob(z,n,x,y)
	%dN - ������� ����������� ������� ����� �� �������
    %1�� ������ - ����������� �� N1 �� x
    %2�� ������ - ����������� �� N2 �� y � �.�.
	Jac = Jacobian (x,y,z,n);
	dNloc = FFloc (z,n);
	invJac = inv(Jac);
	dNglob= [
		invJac*[ dNloc(1,1); dNloc(1,2)];...
		invJac*[ dNloc(2,1); dNloc(2,2)];...
		invJac*[ dNloc(3,1); dNloc(3,2)];...
		invJac*[ dNloc(4,1); dNloc(4,2)]
	];
	
end