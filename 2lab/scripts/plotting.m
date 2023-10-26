% plotting
hold on
grid on
xlabel('t, с', 'FontSize', 16)
ylabel('y, dy', 'FontSize', 16)
ax = gca;
ax.FontSize = 16; 
plot(out.tout, out.y.Data, out.tout, out.dy.Data, LineWidth=2)
legend('y', 'dy', 'FontSize', 14)
title(['roots: z_1 = ', num2str(z1), ', z_2 = ', num2str(z2)])