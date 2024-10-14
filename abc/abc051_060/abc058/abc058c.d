import std;

void main() {
    int n;
    readf("%d\n", n);

    dchar[] res;
    foreach (i; 0 .. n) {
        auto S = readln.chomp.to!(dchar[]);

        S.sort;

        if (i == 0) {
            res = S.dup;
        }

        res = res.setIntersection(S).array;
    }

    res.writeln;
}