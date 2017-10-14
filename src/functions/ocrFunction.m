function [code] = ocrFunction(image)
    image = ocrPreprocessor(image);

    ocrRes = ocr(image, 'TextLayout', 'Block');

    code = replace(ocrRes.Text, "‘", "'");
    code = replace(code, "’", "'");
    code = strrep(code,sprintf(':\n'),sprintf(';\n'));
end