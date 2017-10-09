function result = recognitionNInTests(n)

    imgTrainAll = loadMNISTImages('./train-images.idx3-ubyte');
    lblTrainAll = loadMNISTLabels('./train-labels.idx1-ubyte');
    Mdl = fitcknn(imgTrainAll',lblTrainAll);
    
    imgTestAll = loadMNISTImages('./t10k-images.idx3-ubyte');
    lblTestAll = loadMNISTLabels('./t10k-labels.idx1-ubyte');
    
    imgTest = imgTestAll(:,n);

    lblPredictTest = predict(Mdl,imgTest');
    lblImageTest = lblTestAll(n);
    
    if(lblPredictTest ==lblImageTest)
        result = true;
    else
        result = false;
    end
end