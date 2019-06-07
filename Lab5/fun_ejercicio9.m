function M = fun_ejercicio9(d,f,K)

M = zeros(length(d),2*K+1);
M(:,1) = ones(1,length(d));
    for i=1:K
        M(:,i+1) = cos(d*i*f);
        M(:,i+K+1) = sin(d*i*f);
    end
end