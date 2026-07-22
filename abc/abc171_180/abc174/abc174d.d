import std;

void main() {
    int N;
    readfln("%d", N);

    string c;
    readfln("%s", c);

    size_t R = c.count('R');

    size_t res = c[0 .. R].count('W');
    res.writeln;
}
