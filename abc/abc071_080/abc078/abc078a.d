import std;

void main() {
    dchar X, Y;
    readf("%c %c\n",X, Y);

    dchar res = '=';
    if (X < Y) res = '<';
    if (X > Y) res = '>';

    res.writeln;
}