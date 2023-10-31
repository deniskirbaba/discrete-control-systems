% plotting
hold on
grid on
xlabel('t, с', 'FontSize', 16)
ylabel('g', 'FontSize', 16)
ax = gca;
ax.FontSize = 16; 
stem(out.g.Time, out.g.Data, LineWidth=2)
legend('g(k)', 'FontSize', 14)