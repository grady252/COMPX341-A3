for i in $(find . -type f -name '*.ts'); do
    { echo '// Grady McCallum - 1545313'; cat "$i"; } > /temp/_$$file &&
    mv /temp/_$$file "$i"
done