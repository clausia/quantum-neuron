function plotProbabilities(fileName, N, titlePlot)

    fileID = fopen(fileName,'r');
    A = fscanf(fileID, '%f', [2^(2^N) 2^(2^N)]);
    b = bar3(A);
    colorbar;
    for k = 1:length(b)
        zdata = b(k).ZData;
        b(k).CData = zdata;
        b(k).LineWidth = 0.1;
        b(k).CDataMapping = 'scaled';
        b(k).FaceColor = 'interp';
    end
    title(titlePlot)
    xlabel('k_i')
    ylabel('k_w')
    ax = gca;
    ax.FontSize = 15;
    clim([0 1])
    view(190, 60)

end