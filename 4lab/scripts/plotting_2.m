% plotting
hold on, grid on
plot(out.yout{1}.Values, LineWidth=2)
plot(out.yout{2}.Values, LineWidth=2, LineStyle='--')

xlabel('t, с', 'FontSize', 16)
ylabel('y, u', 'FontSize', 16)
ax = gca;
ax.FontSize = 16; 
legend('y(t)', 'u(k)', 'FontSize', 14)