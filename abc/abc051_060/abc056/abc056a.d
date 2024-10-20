import std;

void main() {
    dchar a, b;
    readf("%c %c\n", a, b);

    dchar res = a == b ? 'H' : 'D';
    res.writeln;
}