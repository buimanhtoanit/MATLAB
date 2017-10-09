function countImagesTrainByLabels()
    
    lblTrainAll = loadMNISTLabels('./train-labels.idx1-ubyte');
    nTrainImages = size(lblTrainAll);
    
    data = [0 1 2 3 4 5 6 7 8 9;
            0 0 0 0 0 0 0 0 0 0];
    
    for i = 1:nTrainImages
        switch lblTrainAll(i)
            case 0
                data(2,1) = data(2,1) + 1;
            case 1
                data(2,2) = data(2,2) + 1;
            case 2
                data(2,3) = data(2,3) + 1;
            case 3
                data(2,4) = data(2,4) + 1;
            case 4
                data(2,5) = data(2,5) + 1;
            case 5
                data(2,6) = data(2,6) + 1;
            case 6
                data(2,7) = data(2,7) + 1;
            case 7
                data(2,8) = data(2,8) + 1;
            case 8
                data(2,9) = data(2,9) + 1;
            case 9
                data(2,10) = data(2,10) + 1;
        end
    end
    xlswrite('train.xls',data);
end