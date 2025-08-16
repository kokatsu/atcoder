import std;

void main() {
    int[] A;
    while (A.empty || A.back != 0) {
        int R;
        readf("%d\n", R);

        A ~= R;
    }

    A.reverse;

    string res = format("%(%d\n%)", A);
    res.writeln;
}
