import Form from 'react-bootstrap/Form';
import {useState} from "react"

function Login(){
    return (<>
    <Form>
      <Form.Group className="mb-3" controlId="exampleForm.ControlInput1">
        <Form.Label>Email address</Form.Label>
        <Form.Control type="email" placeholder="name@example.com" />
      </Form.Group>
      <Form.Group className="mb-3" controlId="exampleForm.ControlInput1">
        <Form.Label>Example textarea</Form.Label>
        <Form.Control />
      </Form.Group>
    </Form>
    </>)
}
export default Login