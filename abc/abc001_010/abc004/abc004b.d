import std;

void main() {
    dchar[][] A = new dchar[][](4, 4);
    foreach (i; 0 .. 4) {
        dchar c1, c2, c3, c4;
        readfln("%c %c %c %c", c1, c2, c3, c4);

        dchar[] c = [c1, c2, c3, c4];
        foreach (j; 0 .. 4) {
            A[3 - i][3 - j] = c[j];
        }
    }

    string res = format("%(%(%c %)\n%)", A);
    res.writeln;
}
