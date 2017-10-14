function countWrongAllImgs()
    
    imgTrainAll = loadMNISTImages('./train-images.idx3-ubyte');
    lblTrainAll = loadMNISTLabels('./train-labels.idx1-ubyte');
    Mdl = fitcknn(imgTrainAll',lblTrainAll);
    
    imgTestAll = loadMNISTImages('./t10k-images.idx3-ubyte');
    lblTestAll = loadMNISTLabels('./t10k-labels.idx1-ubyte');
    nTestImgs = size(imgTestAll,2);
        
    data = [0 1 2 3 4 5 6 7 8 9;
            0 0 0 0 0 0 0 0 0 0];
        
    for i = 1:nTestImgs
        fprintf("%d\n",i);
        imgTest = imgTestAll(:,i);

        lblPredictTest = predict(Mdl,imgTest');
        lblImageTest = lblTestAll(i);

        if(lblPredictTest ~= lblImageTest)
            data(2,lblTestAll(i)+1) = data(2,lblTestAll(i)+1) + 1;
        end
    end
    xlswrite('wrongAll.xls',data);
end