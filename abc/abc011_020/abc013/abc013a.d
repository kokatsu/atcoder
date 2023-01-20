import std;

void main() {
    dchar X;
    readf("%c\n", X);

    int res = X - 'A' + 1;
    res.writeln;
}