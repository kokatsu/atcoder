import std;

void main() {
    int[] A = readln.chomp.split.to!(int[]);

    A.sort;

    auto G = A.group.array;

    string res = "No";
    if (G.length == 2) {
        res = "Yes";
    }

    res.writeln;
}
