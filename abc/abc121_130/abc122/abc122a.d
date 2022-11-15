import std;

void main() {
    dchar b;
    readf("%c\n", b);

    dchar res = 'A';
    if (b == 'A') res = 'T';
    if (b == 'C') res = 'G';
    if (b == 'G') res = 'C';

    res.writeln;
}