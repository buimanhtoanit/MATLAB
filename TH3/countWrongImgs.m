function count = countWrongImgs(n)
    
    imgTrainAll = loadMNISTImages('./train-images.idx3-ubyte');
    lblTrainAll = loadMNISTLabels('./train-labels.idx1-ubyte');
    Mdl = fitcknn(imgTrainAll',lblTrainAll);
    
    imgTestAll = loadMNISTImages('./t10k-images.idx3-ubyte');
    lblTestAll = loadMNISTLabels('./t10k-labels.idx1-ubyte');
    nTestImgs = size(imgTestAll,2);
        
    dem = 0;
    for i = 1:nTestImgs
        if(lblTestAll(i) == n)
            imgTest = imgTestAll(:,i);

            lblPredictTest = predict(Mdl,imgTest');
            lblImageTest = lblTestAll(i);

            if(lblPredictTest ~= lblImageTest)
                dem = dem + 1;
            end
        end
    end
    count = dem;
end