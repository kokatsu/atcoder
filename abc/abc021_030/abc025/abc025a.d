import std;

void main() {
    string S;
    int N;
    readf("%s\n%d\n", S, N);

    string[] list;
    foreach (s; S) {
        foreach(t; S) {
            list ~= [s, t].to!string;
        }
    }

    list.sort;

    string res = list[N-1];
    res.writeln;
}