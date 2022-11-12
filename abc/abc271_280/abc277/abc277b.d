import std;

void main() {
    int N;
    readf("%d\n", N);

    bool isOK = true;

    string A = "HDCS";
    string B = "A23456789TJQK";

    bool[string] list;
    foreach (i; 0 .. N) {
        string S;
        readf("%s\n", S);

        isOK &= A.canFind(S[0]);
        isOK &= B.canFind(S[1]);

        if (S in list) isOK = false;

        list[S] = true;
    }

    writeln(isOK ? "Yes" : "No");
}