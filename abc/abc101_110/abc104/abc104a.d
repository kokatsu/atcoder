import std;

enum int ABC = 1200;
enum int ARC = 2800;

void main() {
    int R;
    readf("%d\n", R);

    auto res = to!(dchar[])("AGC");
    if (R < ABC)
        res[1] = 'B';
    else if (R < ARC)
        res[1] = 'R';

    res.writeln;
}
