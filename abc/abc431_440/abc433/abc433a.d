import std;

void main() {
    int X, Y, Z;
    readf("%d %d %d\n", X, Y, Z);

    string res = "No";
    while (X / Y >= Z) {
        if (X == Y * Z) {
            res = "Yes";
            break;
        }

        ++X, ++Y;
    }

    res.writeln;
}
