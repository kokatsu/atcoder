import std;

void main() {
    int n;
    readf("%d\n", n);

    auto p = readln.chomp.split.to!(int[]);

    int res;
    foreach (i; 1 .. n-1) {
        int[] a = p[i-1..i+2];
        int s = a.sum - a.minElement - a.maxElement;

        if (s == p[i]) ++res;
    }

    res.writeln;
}