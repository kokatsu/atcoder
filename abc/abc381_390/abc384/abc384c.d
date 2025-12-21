import std;

void main() {
    int[] A = readln.chomp.split.to!(int[]);

    string[] names;
    int[] scores;
    foreach (i; 1 .. 32) {
        dchar[] name;
        int score;
        foreach (j; 0 .. 5) {
            if ((i >> j) & 1) {
                name ~= to!dchar('A' + j);
                score += A[j];
            }
        }

        names ~= name.to!string;
        scores ~= score;
    }

    zip(names, scores).sort!((a, b) => a[1] == b[1] ? a[0] < b[0] : a[1] > b[1]);

    string res = format("%-(%s\n%)", names);
    res.writeln;
}
