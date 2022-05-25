for i in $(find . -type f -name '*.ts'); do
    { echo '// Grady McCallum - 1545313'; cat "$i"; } > /tmp/_$$file &&
    mv /tmp/_$$file "$i"
done