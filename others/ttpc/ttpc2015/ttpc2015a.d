import std;

void main() {
    string S;
    readf("%s\n", S);

    string[char] courses = ['B': "Bachelor", 'M': "Master", 'D': "Doctor"];

    writeln(courses[S[2]], " ", S[0 .. 2]);
}
