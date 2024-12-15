import std;

void main() {
    string S = readln.chomp;

    dchar[] l = ['o', 'x', 'x'];

    ulong len = S.length;
    auto T = l.cycle.take(13).array;

    bool isOK;
    foreach (i; 0 .. 3) {
        if (S == T[i .. i + len].to!string) {
            isOK = true;
        }
    }

    writeln(isOK ? "Yes" : "No");
}
