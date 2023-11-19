clc; clear; close all
figure(1)
A = imread('UMBC_Campus.jpg');
whos('A')
A = rgb2gray(A);
whos('A')
imshow(A)
title(['Original (',sprintf('Rank %d)',rank(double(A)))])

%%
format longe
figure(2)

[U0,S0,V0]  = svd(double(A));
num_SV      = size(S0,1);
semilogy(diag(S0),'LineWidth',2)
xlabel('$i$','Interpreter','latex')
ylabel('$\sigma_i$','Interpreter','latex')
axis tight
grid on
%% Manually drop the singular values

for retain_SV = 1:10:1068

    U_red = U0(:,1:retain_SV);
    S_red = S0(1:retain_SV,1:retain_SV);
    V_red = V0(:,1:retain_SV);

    A_red = uint8(U_red*S_red*V_red');

    imshow(A_red)
    total_num_variables = numel(U_red)+numel(V_red)+numel(diag(S_red));
    title(['Approximation with ' num2str(retain_SV) ' singular values. Total numbers stored is ' num2str(total_num_variables) ])
    pause(1e-1)
end



%%


[U1,S1,V1] = svdsketch(double(A),5e-2);
Anew1 = uint8(U1*S1*V1');
imshow(uint8(Anew1))
title(sprintf('Rank %d approximation',size(S1,1)))


figure(3)
[U2,S2,V2] = svdsketch(double(A),1e-1);
Anew2 = uint8(U2*S2*V2');
imshow(Anew2)
title(sprintf('Rank %d approximation',size(S2,1)))

figure(4)
[U3,S3,V3,apxErr] = svdsketch(double(A),1e-1,'MaxSubspaceDimension',15);
Anew3 = uint8(U3*S3*V3');
imshow(Anew3)
title(sprintf('Rank %d approximation',size(S3,1)))

figure(5)
tiledlayout(2,2,'TileSpacing','Compact')
nexttile
imshow(A)
title(['Original (',sprintf('Rank %d)',rank(double(A)))])
nexttile
imshow(Anew1)
title(sprintf('Rank %d approximation',size(S1,1)))
nexttile
imshow(Anew2)
title(sprintf('Rank %d approximation',size(S2,1)))
nexttile
imshow(Anew3)
title(sprintf('Rank %d approximation',size(S3,1)))