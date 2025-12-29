import std;

enum int[5] T = [1, 2, 3, 4, 5];

void main() {
    int[] A = readln.chomp.split.to!(int[]);

    bool ok;
    foreach (i; 0 .. 4) {
        A.swapAt(i, i + 1);

        ok |= A == T;

        A.swapAt(i, i + 1);
    }

    string res = ok ? "Yes" : "No";
    res.writeln;
}
